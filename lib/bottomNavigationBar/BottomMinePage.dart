import 'package:flutter/cupertino.dart';

class BottomMinePage extends StatefulWidget {
  BottomMinePage({Key key}) : super(key: key);

  _BottomMinePageState createState() => _BottomMinePageState();
}

class _BottomMinePageState extends State<BottomMinePage> {
  @override
  Widget build(BuildContext context) {
    return Container(
       child: Text("我的page"),
    );
  }
}