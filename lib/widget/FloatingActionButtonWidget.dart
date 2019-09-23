import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FloatingActionButtonWidget extends StatefulWidget {
  FloatingActionButtonWidget({Key key}) : super(key: key);

  _FloatingActionButtonWidget createState() => _FloatingActionButtonWidget();
}

class _FloatingActionButtonWidget extends State<FloatingActionButtonWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("FloatingActionButton"),
        centerTitle: true,
      ),
      floatingActionButton: Container(
        height: 80,
        width: 80,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(40),
          color: Colors.white,
        ),
        margin: EdgeInsets.only(top: 0),
        padding: EdgeInsets.all(15),
        child: FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: (){
            
          },
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}