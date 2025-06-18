import 'package:flutter/material.dart';
import 'package:awesome_dialog/awesome_dialog.dart';

void buildErorr(BuildContext context, String title) {
  AwesomeDialog(
    context: context,
    dialogType: DialogType.error,
    animType: AnimType.rightSlide,
    title: title,
    btnOkOnPress: () {},
  ).show();
}

void buildSuccess(
  BuildContext context,
  String title,
  void Function()? btnOkOnPress,
) {
  AwesomeDialog(
    context: context,
    dialogType: DialogType.success,
    animType: AnimType.rightSlide,
    title: title,
    // desc: '',
    // dismissOnBackKeyPress: ,
    btnOkOnPress: btnOkOnPress,
  ).show();
}
