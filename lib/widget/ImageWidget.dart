import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ImageWidget extends StatefulWidget {
  ImageWidget({Key key}) : super(key: key);

  _ImageWidgetState createState() => _ImageWidgetState();
}

class _ImageWidgetState extends State<ImageWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Image组件主页"),
      ),
      body: SingleChildScrollView(
        //滑动的方向
        scrollDirection: Axis.vertical,
        //reverse为true 滑动到底部
        reverse: false,
        //滑动到底部回弹效果
        physics: BouncingScrollPhysics(),
        child: Container(
          padding: EdgeInsets.all(10),
          child: Center(
              child: Column(
            children: <Widget>[
              Text("网络加载图"),
              Image.network(
                "https://gss2.bdstatic.com/-fo3dSag_xI4khGkpoWK1HF6hhy/baike/c0%3Dbaike80%2C5%2C5%2C80%2C26/sign=1aebf7b606e93901420f856c1a853f82/7a899e510fb30f242495a395cf95d143ad4b031c.jpg",
                fit: BoxFit.cover,
                width: 100,
                height: 100,
                alignment: Alignment.center,
              ),
              Text("本地图片加载，加载本地图片需要在pubspec.yaml中声明，声明之后才能正常使用"),
              Image.asset("images/a.jpeg",
              width: 100,
              height: 100,
              fit: BoxFit.cover,),
              Text("使用Container实现圆角图片"),
              Container(
                width: 100,
                height: 100,
                decoration: BoxDecoration(
                  color: Colors.yellow,
                  //circular大小是width或height的一半大
                  borderRadius: BorderRadius.circular(50),
                  image:DecorationImage(
                     image :NetworkImage("https://gss0.bdstatic.com/-4o3dSag_xI4khGkpoWK1HF6hhy/baike/c0%3Dbaike80%2C5%2C5%2C80%2C26/sign=1bd28d818d82b90129a0cb6112e4c212/96dda144ad345982669943340bf431adcbef8401.jpg"),
                     fit: BoxFit.cover,
                  ),
                
                ),
              )
            ],
          )),
        ),
      ),
    );
  }
}
