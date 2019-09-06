
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/routes/Routes.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
//      home: Scaffold(
//        appBar: AppBar(
//          title: Text("flutter热身运动"),
//        ),
//      ),
      initialRoute: "/", //初始化的时候加载的路由
      onGenerateRoute: onGenerateRoute,
    );
  }
}




class MyListView extends StatefulWidget {
  MyListView({Key key}) : super(key: key);

  _MyListViewState createState() => _MyListViewState();
}

class _MyListViewState extends State<MyListView> {
  List<HomeBean> list = new List();

  @override
  void initState() {
    super.initState();
    for (int i = 0; i < 10; i++) {
      HomeBean bean =
          new HomeBean("title ${i}", "subTitle ${i}", "content ${i}");
      list.add(bean);
    }
    setState(() {
      this.list = list;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: RaisedButton(
        child: Text("点击了"),
        onPressed: () {
//          ToastUtils.showToast("点击了");
        },
      ),
//     child:ListView.builder(
//        itemCount: this.list.length,
//        itemBuilder: (context,index){
//          HomeBean bean = this.list[index];
//          return ListTile(
//            leading: Icon(Icons.home),
//            title: Text("${bean.title}"),
//            subtitle: Text("${bean.subTitle}"),
//          );
//        },
//      ),
    );
  }
}

class HomeBean {
  String title;
  String subTitle;
  String content;

  HomeBean(this.title, this.subTitle, this.content);
}
