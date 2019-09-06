import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'bean/CommonModel.dart';

class FutureBuilderPage extends StatefulWidget {
  @override
  _FutureBuilderPageState createState() => _FutureBuilderPageState();
}

class _FutureBuilderPageState extends State<FutureBuilderPage> {
  String showResult = "";

  Future<CommonModel> fetchPost() async {
    final response = await http
        .get("http://www.devio.org/io/flutter_app/json/test_common_model.json");
    Utf8Decoder utf8decoder = Utf8Decoder(); //fix 中午乱码
    var result = json.decode(utf8decoder.convert(response.bodyBytes));
    return CommonModel.fromJson(result);
  }

  Future<String> testFuture(){
    return Future.value("success");
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: fetchPost(),
        builder: (BuildContext context, AsyncSnapshot snapshot) {
          switch (snapshot.connectionState) {
            case ConnectionState.none:
              return new Text("Input a URL to start");
            case ConnectionState.waiting:
              return new Center(child: new CircularProgressIndicator());
            case ConnectionState.active:
              return new Text("");
            case ConnectionState.done:
              if (snapshot.hasError) {
                return new Text("${snapshot.error}",
                    style: TextStyle(color: Colors.red));
              } else {
                return new Column(children: <Widget>[
                  Text('icon:${snapshot.data.icon}'),
                  Text('statusBarColor:${snapshot.data.statusBarColor}'),
                  Text('title:${snapshot.data.title}'),
                  Text('url:${snapshot.data.url}')
                ]);
              }
          }
        });
  }
}
