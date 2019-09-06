import 'dart:async';

import 'package:flutter/material.dart';

class StreamPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Stream"),
      ),
      body: Center(
        child: StreamFul(),
      ),
    );
  }
}

class StreamFul extends StatefulWidget {
  @override
  _StreamFulState createState() => _StreamFulState();
}

class _StreamFulState extends State<StreamFul> {
  StreamSubscription _streamSubscription;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Stream<String> _stream = Stream.fromFuture(getData(),);
    _streamSubscription = _stream.listen((value){
      print(value);
    });
  }

  @override
  Widget build(BuildContext context) {
//    return Container(
//      child: Column(
//        children: <Widget>[
//          RaisedButton(
//            child: Text("暂停"),
//            onPressed: (){
//              onPause();
//            },
//          ),
//          RaisedButton(
//            child: Text("恢复"),
//            onPressed: (){
//              onRest();
//            },
//          ),
//          RaisedButton(
//            child: Text("取消"),
//            onPressed: (){
//              onCancel();
//            },
//          )
//        ],
//      ),
//    );
  
    return StreamBuilder<List<String>>(
        stream: Stream.fromFuture(getListData()),
        initialData: ["none"],
        ///这里的 snapshot 是数据快照的意思
        builder: (BuildContext context, AsyncSnapshot<List<String>> snapshot) {
          ///获取到数据，为所欲为的更新 UI
          var data = snapshot.data;
          return Container();
        });
  }

  Future<String> getData() async{
    await Future.delayed(Duration(seconds: 3));
    return "ok以上 ~";
  }

  void onData(String event) {
    print(event);
  }

  void onPause() {
    _streamSubscription.pause();
  }

  void onRest() {
    _streamSubscription.resume();
  }

  void onCancel() {
    _streamSubscription.cancel();
  }

  onError() {
    print("onError");
  }

  void onDone() {
    print("onDone");
  }

  Future<List<String>> getListData() {
    StreamController<List<String>> _streamController = StreamController<List<String>>();
    StreamSink<List<String>> _dataSink =  _streamController.sink;
    Stream<List<String>> _dataStream = _streamController.stream;
    //监听事件
    StreamSubscription _dataSubscription = _dataStream.listen((value){
      //改变事件
      _dataSink.add(["first","second","three","more"]);
    });
  }
}

