import 'package:flutter/cupertino.dart';

class CreateAccountModel {
  final String fullname, address, contactNo, password;

  CreateAccountModel({
    @required this.fullname,
    @required this.address,
    @required this.contactNo,
    @required this.password,
  });
}
