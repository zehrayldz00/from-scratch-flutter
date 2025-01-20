import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CardListItem extends StatelessWidget {
  CardListItem({required this.title, required this.icons});

  final String title;
  final IconData icons;
  //final double _textSize = 50;

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context);
    return Container(
      height: ScreenUtil().setHeight(100),
      child: Card(
        child: ListTile(
          //onTap: onPress,
          title: Text(title),
          trailing: Icon(icons),
        ),
      ),
    );
  }
}
