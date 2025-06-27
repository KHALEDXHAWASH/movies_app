import 'package:flutter/material.dart';

extension sides on BuildContext
{
  double get height=>MediaQuery.sizeOf(this).height;
  double get width=>MediaQuery.sizeOf(this).width;
}
extension EmailFormat on String {
  bool get isValidEmail {
    return RegExp(
        r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
        .hasMatch(this);
  }
}