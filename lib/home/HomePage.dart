import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/utils/ToastUtils.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("首页标题"),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        physics: BouncingScrollPhysics(),
        child: Container(
        margin: EdgeInsets.all(10),
        child: Column(
          children: <Widget>[
            Wrap(
              children: <Widget>[
                Container(
                  padding: EdgeInsets.all(10.0),
                  width: 140,
                  color: Colors.yellow,
                  child: new GestureDetector(
                    onTap: (){
                      ToastUtils.showToast("显示时间 是show类型");
                    },
                    child: Text(
                      "Toast show",
                      style: TextStyle(
                        color: Colors.deepPurple,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                      textDirection: TextDirection.rtl,
                    ),
                  ),
                ),
                SizedBox(width: 10,),
                Container(
                  padding: EdgeInsets.all(10.0),
                  width: 140,
                  color: Colors.yellow,
                  child: new GestureDetector(
                    onTap: (){
                      ToastUtils.showToast("显示时间 是long类型",length_type: 1);
                    },
                    child: Text(
                      "Toast LONG",
                      style: TextStyle(
                        color: Colors.deepPurple,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                      textDirection: TextDirection.rtl,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 10,),
            Wrap(
              children: <Widget>[
                Container(
                  padding: EdgeInsets.all(15.0),
                  color: Colors.grey,
                  child: GestureDetector(
                    onTap: (){
                      Navigator.pushNamed(context, "/streat");
//                      Navigator.of(context).push(
//                          MaterialPageRoute(builder: (BuildContext context){
//                            return StreamPage();
//                          }
//                          ));
                    },
                    child: Text("Stream",
                      style: TextStyle(fontSize: 20,color: Colors.yellowAccent,
                          fontWeight: FontWeight.w300),),
                  ),
                )
              ],
            ),
            SizedBox(height: 10,),
            Wrap(
              children: <Widget>[
                Container(
                  padding: EdgeInsets.all(15.0),
                  color: Colors.grey,
                  child: GestureDetector(
                    onTap: (){
                      Navigator.pushNamed(context, "/dialog");
                    },
                    child: Text("Dialog",
                      style: TextStyle(fontSize: 20,color: Colors.yellowAccent,
                          fontWeight: FontWeight.w300),),
                  ),
                )
              ],
            ),
            RaisedButton(
              child: Text("widget小部件 集合"),
              onPressed: (){
                Navigator.pushNamed(context, "/widget");
              },
            ),
            RaisedButton(
              child: Text("Container小部件 集合"),
              onPressed: (){
                Navigator.pushNamed(context, "/container");
              },
            ),
            RaisedButton(
              child: Text("Image"),
              onPressed: (){
                Navigator.pushNamed(context, "/image");
              },
            ),
            RaisedButton(
              child: Text("flutter布局权重，类似Android weight"),
              onPressed: (){
                Navigator.pushNamed(context, "/adapterLayout");
              },
            ),
            RaisedButton(
              child: Text("ListView案例"),
              onPressed: (){
                Navigator.pushNamed(context, "/listViewWidget");
              },
            ),
            RaisedButton(
              child: Text("GridView案例"),
              onPressed: (){
                Navigator.pushNamed(context, "/gridView");
              },
            ),
            RaisedButton(
              child: Text("层叠样式组件"),
              onPressed: (){
                Navigator.pushNamed(context, "/cascading");
              },
            ),
            RaisedButton(
              child: Text("底部导航栏"),
              onPressed: (){
                Navigator.pushNamed(context, "/bottomNavigation");
              },
            ),
            RaisedButton(
              child: Text("appBar标题栏和状态栏"),
              onPressed: (){
                Navigator.pushNamed(context, "/appBar");
              },
            ),
            RaisedButton(
              child: Text("FloatinActionButton"),
              onPressed: (){
                Navigator.pushNamed(context, "/floatingBtn");
              },
            ),
            RaisedButton(
              child: Text("表单控件"),
              onPressed: (){
                Navigator.pushNamed(context, "/formWidget");
              },
            ),
            RaisedButton(
              child: Text("Scan扫一扫"),
              onPressed: (){
                Navigator.pushNamed(context, "/homeScreen");
              },
            ),
            RaisedButton(
              child: Text("强制横屏显示"),
              onPressed: (){
                Navigator.pushNamed(context, "/horizontalScreen");
              },
            ),
            RaisedButton(
              child: Text("redux状态管理"),
              onPressed: (){
                Navigator.pushNamed(context, "/redux");
              },
            ),
            RaisedButton(
              child: Text("SharedPreferences使用"),
              onPressed: (){
                Navigator.pushNamed(context, "/sharedPreferences");
              },
            ),
          ],
        ),
      ),
      ),
    );
  }
}
