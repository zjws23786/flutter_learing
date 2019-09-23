import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FormWidget extends StatefulWidget {
  FormWidget({Key key}) : super(key: key);

  _FormWidgetState createState() => _FormWidgetState();
}

class _FormWidgetState extends State<FormWidget> {
  TextEditingController _textEditingController = TextEditingController();

@override
  void initState() {
    super.initState();
    _textEditingController.text = "这是文本的初始值";
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("表单控件使用"),
      ),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        scrollDirection: Axis.vertical,
        child:Container(
          margin: EdgeInsets.all(10),
          child:  Column(
          children: <Widget>[
            // maxLength: 30,//最大长度，设置此项会让TextField右下角有一个输入数量的统计字符串
            // maxLines: 1,//最大行数
            // autocorrect: true,//是否自动更正
            // autofocus: true,//是否自动对焦
            // obscureText: true,//是否是密码
            // textAlign: TextAlign.center,//文本对齐方式
            // style: TextStyle(fontSize: 30.0, color: Colors.blue),//输入文本的样式
            // inputFormatters: [WhitelistingTextInputFormatter.digitsOnly],//允许的输入格式
            // onChanged: (text) {//内容改变的回调
            //   print('change $text');
            // },
            // onSubmitted: (text) {//内容提交(按回车)的回调
            //   print('submit $text');
            // },
            // enabled: true,//是否禁用
            TextField(
              //设置文本框最多设置的长度
              maxLength: 10,
              decoration: InputDecoration(
                hintText: "请输入内容",
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 20,),
            Text("默认初始值"),
            TextField(
              controller: _textEditingController,
              onChanged: (value){
                print(value);
                setState(() {
                 this._textEditingController.text = value; 
                });
              },
              decoration: InputDecoration(
                hintText: "请输入您的内容",
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 20,),
            Text("密码框"),
            TextField(
              obscureText: true,
              decoration: InputDecoration(
                hintText: "请输入内容",
                border: OutlineInputBorder(),
              ),
            ),
          ],
        ),
        ),
      ),
    );
  }
}
