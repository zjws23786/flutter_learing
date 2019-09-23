import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';

enum Actions{
  Increase,
}

/**
 * 这里mainReducer为应用程序的主reducer【这里为了测试就写在对应文件上】，
 * 我们知道，reducer是一个函数，它接受一个状态（state），并且“必须”返回
 * 一个状态(state)，如果状态没有变化，那么应该返回原来的状态
 */
int mainReducer(int state,dynamic action){
  if(Actions.Increase == action){
    return state + 1;
  }
  return state;
}


class ReduxPage extends StatefulWidget {
  @override
  _ReduxPageState createState(){
    Store<int> store = new Store<int>(mainReducer,initialState: 0);
    _ReduxPageState(store);
  }
}


/*
* 在Redux中修改状态，实际上是使用Store.dispatch这个方法，分发
* 一个"Action",由reducer这个函数对“Action”进行解析，
* 并返回新的State。
*
* 传递状态，使用StoreConnector这个widget
* */


class _ReduxPageState extends State<ReduxPage> {
  final Store<int> store;

  _ReduxPageState(this.store);


  @override
  void initState() {
    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    /*原来的MaterialApp外面套一层StoreProvider
    这一步是官方要求的，如果不做会报错*/
    return StoreProvider(store: store,
    child: MaterialApp(
      home:  new StoreConnector(builder: (BuildContext context,int counter){
        return MyHomePage(title: 'Flutter Demo Home Page',counter:counter);
      }, converter: (Store<int> store){
        return store.state;
      }) ,
    ),);
  }
}

class MyHomePage extends StatelessWidget {
  final String title;
  final int counter;

  MyHomePage({Key key, this.title,this.counter}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text(title),
      ),
      body: new Center(
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            new Text(
              'You have pushed the button this many times:',
            ),
            new Text(
              '$counter',
              style: Theme
                  .of(context)
                  .textTheme
                  .display1,
            ),
          ],
        ),
      ),
        floatingActionButton: new StoreConnector<int,VoidCallback>(builder: ( BuildContext context,VoidCallback callback ){
          return new FloatingActionButton(
            onPressed:callback,
            tooltip: 'Increment',
            child: new Icon(Icons.add),
          );

        }, converter: (Store<int> store){
          return ()=>store.dispatch(Actions.Increase);
        }),
    );
  }

}
