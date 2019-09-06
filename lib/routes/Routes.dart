import 'package:flutter/material.dart';
import 'package:flutter_app/dialog/DialogPage.dart';
import 'package:flutter_app/home/HomePage.dart';
import 'package:flutter_app/list/ListPage.dart';
import 'package:flutter_app/stream/StreamPage.dart';
import 'package:flutter_app/widget/ContainerWidget.dart';
import 'package:flutter_app/widget/ImageWidget.dart';
import 'package:flutter_app/widget/TextWidget.dart';
import 'package:flutter_app/widget/WidgetUse.dart';

//路由配置
final routes = {
  "/":(context)=>HomePage(),
  "/steam":(context)=>StreamPage(),
  "/dialog":(context)=>DialogPage(),
  "/list":(context)=>ListPage(),
  "/widget":(context)=>WidgetUse(),
  "/text":(context)=>TextWidget(),
  "/container":(context)=>ContainerWidget(),
  "/image":(context)=>ImageWidget(),
};

//固定写法
var onGenerateRoute=(RouteSettings settings) {
  // 统一处理
  final String name = settings.name;
  final Function pageContentBuilder = routes[name];
  if (pageContentBuilder != null) {
    if (settings.arguments != null) {
      final Route route = MaterialPageRoute(
          builder: (context) =>
              pageContentBuilder(context, arguments: settings.arguments));
      return route;
    }else{
      final Route route = MaterialPageRoute(
          builder: (context) =>
              pageContentBuilder(context));
      return route;
    }
  }
};