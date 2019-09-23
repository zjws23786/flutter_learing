import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/utils/LogUtils.dart';
import 'package:flutter_app/utils/SharedPreferencesUtils.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SharedPreferencesPage extends StatefulWidget {
  @override
  _SharedPreferencesPageState createState() => _SharedPreferencesPageState();
}

class _SharedPreferencesPageState extends State<SharedPreferencesPage> {
  @override
  void initState() {
    super.initState();
    setSharedPreferences(context);
    getSharedPreferences(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     appBar: AppBar(
       title: Text("sharedPreferences使用"),
     ),
      body: Container(

      ),
    );
  }

  Future setSharedPreferences(BuildContext context) async {
    SharedPreferencesUtil.putString("str", "字符串");
    SharedPreferencesUtil.putBool("bool", false);
    SharedPreferencesUtil.putDouble("double", 12306.000);
    SharedPreferencesUtil.putInt("int", 110);
    SharedPreferencesUtil.putStringList("stringList",["1","2","3"]);
  }

  Future getSharedPreferences(BuildContext context) async {
    LogUtils.v('hjz',SharedPreferencesUtil.getString("str"));
    LogUtils.v('hjz',SharedPreferencesUtil.getBool("bool").toString());
    LogUtils.v('hjz',SharedPreferencesUtil.getDouble("double").toString());
    LogUtils.v('hjz',SharedPreferencesUtil.getInt("int").toString());
    LogUtils.v('hjz',SharedPreferencesUtil.getStringList("stringList").toString());
  }
}
