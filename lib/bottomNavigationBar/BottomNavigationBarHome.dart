import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'BottomFindPage.dart';
import 'BottomHomePge.dart';
import 'BottomMinePage.dart';

class BottomNavigationBarHome extends StatefulWidget {
  BottomNavigationBarHome({Key key}) : super(key: key);

  _BottomNavigationBarHomeState createState() =>
      _BottomNavigationBarHomeState();
}

class _BottomNavigationBarHomeState extends State<BottomNavigationBarHome> {
  int _currentIndex = 0;
  List _pageList = [
    BottomHomePage(),
    BottomFindPage(),
    BottomMinePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("底部导航栏的运用"),
        centerTitle: true,
      ),
      body: this._pageList[this._currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        //配置对应的索引值选中
        currentIndex: this._currentIndex,
        onTap: (int index) {
          //改变状态
          setState(() {
            this._currentIndex = index;
          });
        },
        iconSize: 36.0,
        //选中的颜色  
        fixedColor: Colors.red,
        //配置底部tabs可以有多个按钮
        type:BottomNavigationBarType.fixed,   
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              title: Text("首页")
            ),
             BottomNavigationBarItem(
              icon: Icon(Icons.find_in_page),
              title: Text("查找")
            ),
            
             BottomNavigationBarItem(
              icon: Icon(Icons.minimize),
              title: Text("我的")
            )
          ],
      ),
    );
  }
}
