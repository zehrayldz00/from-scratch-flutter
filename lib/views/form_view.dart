import 'package:flutter/material.dart';

class FormView extends StatefulWidget {
  const FormView({super.key});

  @override
  State<FormView> createState() => _FormViewState();
}

class _FormViewState extends State<FormView> {

  final formKey = GlobalKey<FormState>();
  final _textFieldUserName = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     // key: scaffoldKey,
      appBar: AppBar(),
      body: Form(
        key: formKey,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextFormField(
              controller: _textFieldUserName,
              validator: (val){
                if(val!.isEmpty){
                  return "have an error";
                }else{
                  return null;
                }
              },
            ),
            SizedBox(height: 50,),
            TextFormField(
              decoration: InputDecoration(
                hintText: "Yazınız",
                labelText: "Password",
                border: OutlineInputBorder()
              ) ,
              validator: (val){
                if(val!.length < 6){
                  return "zayıf şifre";
                }else{
                  return null;
                }
              } ,
            ),
            IconButton(
                onPressed: (){
                  formKey.currentState!.reset();
                  if(formKey.currentState!.validate()){
                    print("okey");
                  }else{
                    ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content : Text("Error"),
                          duration : Duration(seconds : 2)
                        )
                    );
                    print("error");
                  }
                },
                icon: Icon(Icons.check)
            ),
          ],
        ),
      ),
    );
  }
  @override
  void dispose() {
    formKey.currentState!.dispose();
    super.dispose();
  }
}
