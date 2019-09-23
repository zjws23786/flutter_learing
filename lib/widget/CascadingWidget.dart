import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CascadingWidget extends StatefulWidget {
  CascadingWidget({Key key}) : super(key: key);

  _CascadingWidgetState createState() => _CascadingWidgetState();
}

class _CascadingWidgetState extends State<CascadingWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("层叠组件使用"),
      ),
      body: stack(context),
    );
  }
}

Widget stack(BuildContext context) {
  return Container(
    child: Column(
      children: <Widget>[
        Stack(
          /**
           * alignment属性是控制层叠的位置的，建议在两个内容进行层叠时使用。
           * 它有两个值X轴距离和Y轴距离，值是从0到1的，都是从上层容器的左上角开始算起的
           */
          alignment: Alignment(0, 0.6),
          children: <Widget>[
            CircleAvatar(
              backgroundImage: AssetImage("images/a.jpeg"),
              radius: 100,
            ),
            Container(
              decoration: BoxDecoration(
                color: Colors.black45,
              ),
              child: Text("添加水印",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  )),
            )
          ],
        ),
        Container(
            height: 400,
            width: 300,
            color: Colors.red,
            child: Stack(
              // alignment: Alignment.center,
              children: <Widget>[
                Positioned(
                //  left: 10,
                  child: Icon(Icons.home,size: 40,color: Colors.white),
                ),
                Positioned(
                 bottom: 0,
                 left: 100,
                  child: Icon(Icons.search,size: 30,color: Colors.white),
                ),
                Positioned(
                  right: 0,
                  child: Icon(Icons.settings_applications,size: 30,color: Colors.white),
                )
              ],
            ),
        ),
      ],
    ),
  );
}
