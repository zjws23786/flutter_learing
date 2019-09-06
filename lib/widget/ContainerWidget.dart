import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ContainerWidget extends StatelessWidget {
  const ContainerWidget({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Container主页"),
      ),
      body: Container(
        margin: EdgeInsets.all(10),
        child: Column(
          children: <Widget>[
            Container(
              alignment: Alignment.center,
              width: 500,
              height: 40,
              color: Colors.pink,
              child: Text("alignment 对齐方式"),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              width: 500,
              height: 40,
              decoration: BoxDecoration(
                  //container背景色
                  color: Colors.blue,
                  //container 边框样式
                  border: Border.all(
                    color: Colors.red,
                    width: 2.0,
                  ),
                  //边框角度
                  borderRadius: BorderRadius.all(Radius.circular(8.0))),
              child: Text("decoration 装饰"),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              width: 300,
              height: 60,
              //使用decoration和color不是并存使用，使用了decoration就不能使用color，否则就报错
              // color: Colors.red,
              decoration: BoxDecoration(
                  //container背景色
                  color: Colors.blue,
                  //container 边框样式
                  border: Border.all(
                    color: Colors.red,
                    width: 2.0,
                  ),
                  //边框角度
                  borderRadius: BorderRadius.all(Radius.circular(8.0))),
              child: Text("transform 动画"),
              transform: Matrix4.rotationZ(-0.1),
            ),
          ],
        ),
      ),
    );
  }
}
