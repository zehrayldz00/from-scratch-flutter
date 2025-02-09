import 'dart:io';

import 'package:flutter/material.dart';
import 'package:logger/logger.dart';
import 'package:open_file/open_file.dart';
import 'package:path_provider/path_provider.dart';
import 'package:http/http.dart' as http;

class FileDownloadView extends StatefulWidget {
  const FileDownloadView({super.key});

  @override
  State<FileDownloadView> createState() => _FileDownloadViewState();
}

class _FileDownloadViewState extends State<FileDownloadView> {
  String _filePath = "";

  Future <String> get _localDevicePath async{
    final _devicePath = await getApplicationDocumentsDirectory();
    return _devicePath.path;
  }

  Future <File>  _localFile({required String path, required String type}) async{
    String _path = await _localDevicePath;
    var _newPath = await Directory("$_path/$path").create(recursive: true); // burada recursive:true olmadan ara dizinler oluşturulamaz.
    return File("${_newPath.path}/selam.$type");
  }


  /*Future _downloadSamplePDF() async{
    final _response = await http.get(Uri.parse('https://www.w3.org/WAI/ER/tests/xhtml/testfiles/resources/pdf/dummy.pdf'));
    if(_response.statusCode == 200){
      final _saveFile = await _localFile(path :"veli", type: "pdf" );
      await _saveFile.writeAsBytes(_response.bodyBytes); // yanıt başarılı ise pdfin byte verileri alınır. ve pdf cihaza kaydedilir.
      Logger().i("File write completed. File Path ${_saveFile.path}");
      setState(() {
        _filePath = _saveFile.path;
      });
    }else{
      Logger().e(_response.statusCode);
    }
  }*/

  Future _downloadSampleVideo() async{
    final _response = await http.get(Uri.parse('https://www.sample-videos.com/video321/mp4/720/big_buck_bunny_720p_1mb.mp4'));
    if(_response.statusCode == 200){
      final _saveFile = await _localFile(path: "videos", type: "mp4");
      await _saveFile.writeAsBytes(_response.bodyBytes); // yanıt başarılı ise pdfin byte verileri alınır. ve pdf cihaza kaydedilir.
      Logger().i("File write completed. File Path ${_saveFile.path}");
      setState(() {
        _filePath = _saveFile.path;
      });
    }else{
      Logger().e(_response.statusCode);
    }
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            IconButton(
                onPressed: _downloadSampleVideo,
                icon: Icon(Icons.file_download),
            ),
            Text(_filePath),
            IconButton(
              onPressed: (){
                OpenFile.open(_filePath);
              },
              icon: Icon(Icons.file_open),
            ),
          ],
        ),
      ),
    );
  }
}

