import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AdapterLaout extends StatefulWidget {
  AdapterLaout({Key key}) : super(key: key);

  _AdapterLaoutState createState() => _AdapterLaoutState();
}

class _AdapterLaoutState extends State<AdapterLaout> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        appBar: AppBar(
          title: Text("设置布局的权重,相当Android weight概念"),
        ),
        body: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            reverse: false,
            child: Container(
              padding: EdgeInsets.all(20),
              child: Column(
                children: <Widget>[
                  Text("Flexible结合flex使用"),
                  Row(
                    children: <Widget>[
                      Flexible(
                        flex: 2,
                        child: new Container(
                          color: Colors.redAccent,
                          height: 40.0,
                        ),
                      ),
                      Flexible(
                        flex: 3,
                        child: Container(
                          color: Colors.blueAccent,
                          height: 40.0,
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text("expanded和flex结合使用"),
                  Row(
                    children: <Widget>[
                      Expanded(
                        child: Container(
                          color: Colors.redAccent,
                          height: 40,
                        ),
                        flex: 2,
                      ),
                      Expanded(
                        child: Container(
                          color: Colors.blueAccent,
                          height: 40,
                        ),
                        flex: 1,
                      )
                    ],
                  ),
                  Text(
                      "Expanded 继承的是 Flexible；Flexible 支持的分割布局权重的方式 Expanded 也一样，而与 Flexible 不同的是默认会将子控件充满布局"),
                  SizedBox(height: 20,),
                  RaisedButton(
                    child: Text("自适应权重运用"),
                    onPressed: (){
                      Navigator.pushNamed(context, "/adapterLayoutApply");
                    },
                  )
                ],
              ),
            )),
      ),
    );
  }
}
