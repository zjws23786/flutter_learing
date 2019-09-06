import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DialogPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("dialog主页"),
      ),
      body: Container(
        padding: EdgeInsets.all(10),
        child: Wrap(
          children: <Widget>[
            RaisedButton(
              child: Text("普通dialog"),
              onPressed: (){
                showMyCupertinoDialog(context);
              },
            ),
            SizedBox(width: 15,),
            RaisedButton(
              child: Text("自定义dialog"),
              onPressed: (){
                showMyCustomLoadingDialog(context);
              },
            )
          ],
        ),
      ),
    );
  }

  void showMyCupertinoDialog(BuildContext context) {
    showCupertinoDialog(
        context:context,
        builder: (context){
          return new CupertinoAlertDialog(
            title: Text("标题"),
            content: Text("我的就是内容内容，叫我内容"),
            actions: <Widget>[
              new FlatButton(
                onPressed: () {
                  Navigator.of(context).pop("点击了确定");
                },
                child: new Text("确认"),
              ),
              new FlatButton(
                onPressed: () {
                  Navigator.of(context).pop("点击了取消");
                },
                child: new Text("取消"),
              ),
            ],
          );
        }
    );
  }

  void showMyCustomLoadingDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (context){
        return MyCustomLoadingDialog();
      }
    );
  }
}

class MyCustomLoadingDialog extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Duration insetAnimationDuration = const Duration(milliseconds: 100);
    Curve insetAnimationCurve = Curves.decelerate;

    RoundedRectangleBorder _defaultDialogShape = RoundedRectangleBorder(
      borderRadius: BorderRadius.all(Radius.circular(2.0)),
    );

    return AnimatedPadding(
      padding: MediaQuery.of(context).viewInsets +
      const EdgeInsets.symmetric(horizontal: 40.0,vertical: 24.0),
      duration: insetAnimationDuration,
      curve: insetAnimationCurve,
      child: MediaQuery.removeViewInsets(
          context: context,
          removeLeft: true,
          removeTop: true,
          removeRight: true,
          removeBottom: true,
          child: Center(
            child: SizedBox(
              width: 120,
                height: 120,
              child: Material(
                elevation: 24.0,
                color: Theme.of(context).dialogBackgroundColor,
                type: MaterialType.card,
                child: Column(
                  mainAxisAlignment:MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    CircularProgressIndicator(),
                    Padding(
                        padding: const EdgeInsets.only(top: 20),
                        child: Text("加载中"),
                    )
                  ],
                ),
                shape: _defaultDialogShape,
              ),
            ),
          )),
    );
  }
}

