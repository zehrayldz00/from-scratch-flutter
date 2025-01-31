import 'package:flutter/cupertino.dart';

class BaseViewModel{
  String? text;
  String? name;
  BuildContext context; // Sayfalar BuildContextten türer.

  void setContext(){
    this.context = context;
  }

  BaseViewModel(this.context); // Bunu yapmak kesin bunu alacağını söylemek olduğu için null safety için bir şey yapmaya gerek yok.
}