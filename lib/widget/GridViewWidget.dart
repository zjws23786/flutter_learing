import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class GridViewWidget extends StatefulWidget {
  GridViewWidget({Key key}) : super(key: key);

  _GridViewWidgetState createState() => _GridViewWidgetState();
}

class _GridViewWidgetState extends State<GridViewWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        appBar: AppBar(
          title: Text("gridView使用"),
        ),
        //  body: simpleGridView(context),
        // body: fixedCrossAxisCountGridView(context),
        body: GridViewBuild(),
      ),
    );
  }

  Widget simpleGridView(BuildContext context) {
    return GridView(
      scrollDirection: Axis.vertical,
      //SliverGridDelegateWithMaxCrossAxisExtent 创建一个具有交叉轴最大值的一个网格布局
      gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
        //子控件最大的宽度为100
        //子控件的最大宽度，实际宽度是根据交叉轴的值进行平分，也就是说最大宽度并不一定是实际宽度，
        //很有可能子控件的实际宽度要小于设置的最大宽度
        maxCrossAxisExtent: 100,
        //子控件的宽高比
        childAspectRatio: 0.5, //宽度比为1:2
        //交叉轴之间的间距
        crossAxisSpacing: 10,
        //主轴之间的间距
        mainAxisSpacing: 10,
      ),
      padding: EdgeInsets.all(10),
      children: List.generate(
        20,
        (int index) {
          return Box("$index");
        },
      ),
    );
  }

  Widget fixedCrossAxisCountGridView(BuildContext context) {
    return GridView(
      scrollDirection: Axis.vertical,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        crossAxisCount: 6,
      ),
      children: List.generate(20, (index) {
        return Box("$index");
      }),
    );
  }
}

class GridViewBuild extends StatefulWidget {
  GridViewBuild({Key key}) : super(key: key);

  _GridViewBuildState createState() => _GridViewBuildState();
}

class _GridViewBuildState extends State<GridViewBuild> {
  List<int> indexs = List.generate(100, (index) {
    return index;
  });

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 5,
      ),
      itemCount: indexs.length,
      itemBuilder: (context, index) {
        //当数据加载完毕时，再追加数据
        if (index == indexs.length - 1 && indexs.length < 20) {
          _addIndex();
        }

        return Container(
          decoration: BoxDecoration(
            border: Border(
              bottom: BorderSide(
                width: 2,
                color: Colors.redAccent,
              )
            )
          ),
          alignment: AlignmentDirectional.center,
          child: Text(
            "$index",
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.red,
              fontSize: 20,
            ),
          ),
        );
      },
    );
  }

  void _addIndex() {
    /*这里要延时加载  否则会抱The widget on which setState() or markNeedsBuild() was called was:错误*/
    Future.delayed(Duration(milliseconds: 200)).then((e) {
      setState(() {
        indexs.add(indexs.length + 1);
      });
    });
  }
}

/*
* 一个带渐变颜色的正方形
* */
class Box extends StatelessWidget {
  String index;
  double boxSize = 100;

  Box(String index) {
    this.index = index;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: boxSize,
      height: boxSize,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        gradient: LinearGradient(
            colors: [Colors.orangeAccent, Colors.orange, Colors.deepOrange]),
      ),
      child: Text(
        index,
        style: TextStyle(
          color: Colors.white,
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
