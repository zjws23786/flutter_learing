import 'package:flutter/material.dart';
import 'package:flutter_app/res/ColorSet.dart';
import 'package:fluttertoast/fluttertoast.dart';

class ToastUtils{
  /**
   * length_type=>  0=LENGTH_SHORT, 1=LENGTH_LONG
   */
  static void showToast(String msg,{int length_type=0}) {
    Fluttertoast.showToast(
      msg: msg,
      toastLength: length_type==0 ? Toast.LENGTH_SHORT : Toast.LENGTH_LONG,
      gravity: ToastGravity.CENTER,
      timeInSecForIos: 1,
      backgroundColor: ColorSet.colorPrimaryDark,
      textColor: Colors.white,
      fontSize: 16.0,
    );
  }
}