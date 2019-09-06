import 'dart:async';
import 'package:flutter/material.dart';
class DataBloc{
  //定义一个Controller
  StreamController<List<String>> _dataController = StreamController<List<String>>();
  //获取StreamSink 作为 add 入口
  StreamSink<List<String>> get _dataSink => _dataController.sink;
  //获取Stream 用于监听
  Stream<List<String>> get _dataStream => _dataController.stream;
  //事件订阅对象
  StreamSubscription _dataSubscription;

  init(){
    //监听事件
    _dataSubscription = _dataStream.listen((value){
      //改变事件
      _dataSink.add(["first","second","three","more"]);
    });
  }

  close(){
    //关闭
    _dataSubscription.cancel();
    _dataController.close();
  }
}