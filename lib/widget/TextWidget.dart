import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TextWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Text使用"),
      ),
      body: SingleChildScrollView(
        //滑动的方向
        scrollDirection: Axis.vertical,
        //reverse为true 滑动到底部
        reverse: false,
        //滑动到底部回弹效果
        physics: BouncingScrollPhysics(),
        child: Container(
        padding: EdgeInsets.all(10.0),
        child: Column(
          children: <Widget>[
            Column(
              children: <Widget>[
                Text("text没有width和height属性,要设置Text宽高，就要"
                    "结合Container一起使用，在Container设置width和height"),
                SizedBox(height: 10,),
                Container(
                  width: 500,
                  height: 50,
                  color: Colors.yellow,
                  child:  Text("textAlign 设置文本对齐方式",
                    textAlign: TextAlign.center,
                  ),
                ),
                SizedBox(height: 10,),
                Container(
                  width: 500,
                  height: 50,
                  color: Colors.yellow,
                  child:  Text("textDirection 设置文方向",
                    textDirection: TextDirection.rtl,
                  ),
                ),
                SizedBox(height: 10,),
                Container(
                  width: 500,
                  height: 50,
                  color: Colors.yellow,
                  child:  Text("overflow 文字超出屏幕之后的处理方式,clip裁剪，fade 渐隐，ellipsis 省略号",
                    overflow:TextOverflow.ellipsis,
                  ),
                ),
                SizedBox(height: 10,),
                Container(
                  width: 500,
                  height: 50,
                  color: Colors.yellow,
                  child:  Text("maxLines文字显示最大行数, 文字超出屏幕之后的处理方式,clip裁剪，fade 渐隐，ellipsis 省略号",
                    overflow:TextOverflow.ellipsis,
                    maxLines: 2,
                  ),
                ),
                SizedBox(height: 10,),
                Container(
                  width: 500,
                  height: 50,
                  color: Colors.yellow,
                  child:  Text("style 字体的样式设置, 文字超出屏幕之后的处理方式,clip裁剪，fade 渐隐，ellipsis 省略号",
                    overflow:TextOverflow.ellipsis,
                  style: TextStyle(
                    color: Colors.white,
                  ),
                  ),
                ),
                SizedBox(height: 10,),
                Container(
                  width: 500,
                  height: 50,
                  color: Colors.yellow,
                  child:  Text("style decoration文字装饰线, 文字超出屏幕之后的处理方式,clip裁剪，fade 渐隐，ellipsis 省略号",
                  style: TextStyle(
                    color: Colors.white,
                    decoration:TextDecoration.lineThrough,
                    decorationColor: Colors.red,
                  ),
                  ),
                ),
                SizedBox(height: 10,),
                Container(
                  width: 500,
                  height: 50,
                  color: Colors.yellow,
                  child:  Text("style decoration文字装饰线风格, 文字超出屏幕之后的处理方式,clip裁剪，fade 渐隐，ellipsis 省略号",
                  style: TextStyle(
                    color: Colors.white,
                    decoration:TextDecoration.lineThrough,
                    decorationColor: Colors.red,
                    decorationStyle: TextDecorationStyle.dashed
                  ),
                  ),
                ),
                SizedBox(height: 10,),
                Container(
                  width: 500,
                  height: 50,
                  color: Colors.yellow,
                  child:  Text("style wordSpacing单词间隙（如果是负值，会让单词变得更紧凑",
                  style: TextStyle(
                    color: Colors.white,
                    // decoration:TextDecoration.lineThrough,
                    // decorationColor: Colors.red,
                    // decorationStyle: TextDecorationStyle.dashed
                    wordSpacing: 40,
                  ),
                  ),
                ),
                SizedBox(height: 10,),
                Container(
                  width: 500,
                  height: 50,
                  color: Colors.yellow,
                  child:  Text("Text综合运用",
                  style: TextStyle(
                    color: Colors.white,
                    // decoration:TextDecoration.lineThrough,
                    // decorationColor: Colors.red,
                    // decorationStyle: TextDecorationStyle.dashed
                    wordSpacing: 40,
                    fontSize: 30,
                    fontWeight: FontWeight.w400,
                    fontStyle: FontStyle.italic,
                  ),
                  ),
                ),

              ],
            ),
          ],
        ),
      ),
      )

    );
  }
}
