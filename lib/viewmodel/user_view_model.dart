import 'package:flutter/material.dart';
import '../core/usercore.dart';


class UserViewModel extends BaseViewModel {
  String? userName;

  UserViewModel(BuildContext context, String name) : super(context, name,);


 /// [context] pass for view
  @override
  void setGlobalKey(String id) {
  }

}

class UserViewModel2 implements BaseViewModel{
  String? id;

  @override
  late BuildContext context;

  @override
  void setGlobalKey(String id) {
    id = id;
  }

  @override
  String getFullUserName(String name) {
    throw UnimplementedError();
  }

}