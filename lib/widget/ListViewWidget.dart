import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ListViewWidget extends StatefulWidget {
  ListViewWidget({Key key}) : super(key: key);

  _ListViewWidgetState createState() => _ListViewWidgetState();
}

class _ListViewWidgetState extends State<ListViewWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        appBar: AppBar(
          title: Text("ListView案例"),
        ),
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          physics: BouncingScrollPhysics(),
          reverse: false,
          child: Container(
            margin: EdgeInsets.fromLTRB(0, 10, 0, 10),
            child: Column(
              children: <Widget>[
                Text("使用ListView.builder构建ListView"),
                Container(
                  height: 300,
                  child: builderListView(context),
                ),
                SizedBox(height: 20,),
                Text("使用ListView.separated来构建ListView"),
                Container(
                  height: 300,
                  child: separatedListView(context),
                ),
                SizedBox(height: 20,),
                RaisedButton(
                  child: Text("CustomScrollViews"),
                  onPressed: (){
                    Navigator.pushNamed(context, "/customScollView");
                  },
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget separatedListView(BuildContext context){
    return ListView.separated(
      itemCount: 20, //item个数
      //item adapter 构建
      itemBuilder: (BuildContext context,int index){
        return Container(
          margin: EdgeInsets.fromLTRB(10, 0, 10, 0),
          height: 50,
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text("text $index"),
              ],
            ),
          ),
          decoration: BoxDecoration(
              color: Colors.greenAccent,
          ),

        );
      },
      //构建 子项之间的分隔符
      separatorBuilder: (BuildContext context,int index){
        return Container(
          height: 1.0, 
          color: Colors.red,
          margin: EdgeInsets.fromLTRB(10, 0, 10, 0),);
      },
    );
  }

  Widget builderListView(BuildContext context) {
    return ListView.builder(
      // padding: EdgeInsets.all(10),
      itemExtent: 50, //强制指定子控件高度范围
      itemCount: 20, //item个数
      itemBuilder: (BuildContext context, int index) {
        return Container(
          margin: EdgeInsets.fromLTRB(10, 0, 10, 0),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text("text $index"),
                Text("$index"),
              ],
            ),
          ),
          // color: Colors.grey,
          decoration: BoxDecoration(
              // border: Border.all(
              //       color: Colors.red,
              //       width: 2.0,
              //     ),
              color: Colors.greenAccent,
              border: Border(
            bottom: BorderSide(width: 2, color: Colors.redAccent),
          )),

        );
      },
    );
  }
}
