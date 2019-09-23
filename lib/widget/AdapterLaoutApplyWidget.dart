import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AdapterLaoutApplyWidget extends StatefulWidget {
  AdapterLaoutApplyWidget({Key key}) : super(key: key);

  _AdapterLaoutApplyWidgetState createState() =>
      _AdapterLaoutApplyWidgetState();
}

class _AdapterLaoutApplyWidgetState extends State<AdapterLaoutApplyWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        appBar: AppBar(
          title: Text("自适应权重运用"),
        ),
        body: Container(
          child: Column(
            children: <Widget>[
              Container(
                height: 10,
              ),
              Flexible(
                child: Container(
                  child: Row(
                    children: <Widget>[
                      Flexible(
                        child: Container(),
                        flex: 1,
                      ),
                      Container(
                        width: 16,
                        height: 16,
                      ),
                      Container(
                        width: 1.0,
                        color: Colors.red,
                      ),
                      Container(
                        width: 16,
                        height: 1.0,
                        color: Colors.blueAccent,
                      ),
                      Flexible(
                        child: Container(
                          child: buildListData(
                              context, Color.fromARGB(40, 50, 40, 80), '上班签到'),
                        ),
                        flex: 1,
                      )
                    ],
                  ),
                ),
                flex: 1,
              ),
              Flexible(
                flex: 1,
                child: Container(
                  child: Row(
                    children: <Widget>[
                      Flexible(
                        child: Container(
                          child: buildListData(
                              context, Colors.greenAccent, '下班签退'),
                        ),
                        flex: 1,
                      ),
                      Container(
                        width: 16,
                        height: 1,
                        color: Colors.blueAccent,
                      ),
                      Container(
                        width: 1.0,
                        color: Colors.blueAccent,
                      ),
                      Container(
                        width: 16,
                        height: 1.0,
                      ),
                      Flexible(
                        child: Container(),
                        flex: 1,
                      )
                    ],
                  ),
                ),
              ),
              Container(
                height: 60,
                child: Center(
                  child: Text(
                    "请及时签到哦~",
                    style: TextStyle(color: Colors.blue, fontSize: 16),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget buildListData(BuildContext context, Color color, String text) {
    return Center(
      child: GestureDetector(
        child: CircleAvatar(
          backgroundColor: color,
          radius: 72.0,
          child: Text(
            text,
            style: TextStyle(color: Colors.blue, fontSize: 18),
          ),
        ),
        onTap: () {
          showDialog(
              context: context,
              builder: (BuildContext context) {
                return AlertDialog(
                  title: Text(
                    "温馨提示",
                    style: TextStyle(color: Colors.black54, fontSize: 18),
                  ),
                  content: Text("您点击的item内容为:$text"),
                );
              });
        },
      ),
    );
  }
}
