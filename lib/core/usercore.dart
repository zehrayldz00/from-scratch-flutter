import 'package:flutter/cupertino.dart';

abstract class BaseViewModel{
  String? _name;
  BuildContext context; // Sayfalar BuildContextten türer.

  String getFullUserName (String name) {
    return _name! + name;
  }

  void setGlobalKey(String id);

  BaseViewModel(this.context, this._name); // Bunu yapmak kesin bunu alacağını söylemek olduğu için null safety için bir şey yapmaya gerek yok.
}