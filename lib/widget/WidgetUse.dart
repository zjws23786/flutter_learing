import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class WidgetUse extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("widget使用"),
      ),
      body: Container(
        padding: EdgeInsets.all(10),
        child: Column(
            children: <Widget>[
            Wrap(
              children: <Widget>[
                RaisedButton(
                  child: Text("Text使用"),
                  onPressed: (){
                    Navigator.pushNamed(context, "/text");
                  },
                )
              ],
            ),
        ],
      ),
    ),);
  }
}
