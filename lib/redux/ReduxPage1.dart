import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ReduxPage extends StatefulWidget {
  @override
  _ReduxPageState createState() => _ReduxPageState();
}

class _ReduxPageState extends State<ReduxPage> {
  int _counter  = 0;

  void _incrementCounter(){
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("redux使用"),
      ),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        scrollDirection: Axis.vertical,
        child: Container(
          margin: EdgeInsets.all(20),
          child: Column(
            children: <Widget>[
              Image.network(
                "https://upload-images.jianshu.io/upload_images/2868618-255bcc2875ce7bfd.png?imageMogr2/auto-orient/strip|imageView2/2/w/1200/format/webp",
                fit: BoxFit.cover,
                width: 400,
                height: 150,
                alignment: Alignment.center,
              ),
              SizedBox(
                height: 20,
              ),
              Text(""
                  "1、先注册一个store，保存各种state"
                  "\n2、视图拿到store提供的数据(StoreConnector)进行渲染"
                  "\n3、view不能直接修改state，只能通过(dispatch)发出action，然后reducer接收到这个action"
                  "\n4、匹配这个action，生产新的state.store会替换成新的state，然后更新使用了这个state的view"
                  "\n\n"
                  "进入实操 \n"
                  "1、导入 redux、flutter_redux"
                  "\n2、创建state"),
              SizedBox(height: 20,),
              Text("You have pushed the button this many times:"),
              Text("$_counter",
                style: TextStyle(color: Colors.red,fontWeight: FontWeight.bold,fontSize: 24),)
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: (){
            _incrementCounter();
          },
      tooltip: "Increment",
      child: Icon(Icons.add),),
    );
  }
}
