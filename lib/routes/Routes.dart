import 'package:flutter/material.dart';
import 'package:flutter_app/appBar/AppBarWidget.dart';
import 'package:flutter_app/bottomNavigationBar/BottomNavigationBarHome.dart';
import 'package:flutter_app/dialog/DialogPage.dart';
import 'package:flutter_app/home/HomePage.dart';
import 'package:flutter_app/list/ListPage.dart';
import 'package:flutter_app/redux/ReduxPage.dart';
import 'package:flutter_app/stream/StreamPage.dart';
import 'package:flutter_app/widget/AdapterLaoutApplyWidget.dart';
import 'package:flutter_app/widget/AdaptiveLayoutWidget.dart';
import 'package:flutter_app/widget/CascadingWidget.dart';
import 'package:flutter_app/widget/ContainerWidget.dart';
import 'package:flutter_app/widget/CustomScrollViewWidget.dart';
import 'package:flutter_app/widget/FloatingActionButtonWidget.dart';
import 'package:flutter_app/widget/FormWidget.dart';
import 'package:flutter_app/widget/GridViewWidget.dart';
import 'package:flutter_app/widget/HorizontalScreenPage.dart';
import 'package:flutter_app/widget/ImageWidget.dart';
import 'package:flutter_app/widget/ListViewWidget.dart';
import 'package:flutter_app/widget/SharedPreferencesPage.dart';
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
  "/adapterLayout":(context)=>AdapterLaout(),
  "/adapterLayoutApply":(context)=>AdapterLaoutApplyWidget(),
  "/listViewWidget":(context)=>ListViewWidget(),
  "/customScollView":(context)=>CustomScrollViewWidget(),
  "/gridView":(context)=>GridViewWidget(),
  "/cascading":(context)=>CascadingWidget(),
  "/bottomNavigation":(context)=>BottomNavigationBarHome(),
  "/appBar":(context)=>AppBarWidget(),
  "/floatingBtn":(context)=>FloatingActionButtonWidget(),
  "/formWidget":(context)=>FormWidget(),
  "/horizontalScreen":(context)=>HorizontalScreenPage(),
  "/redux":(context)=>ReduxPage(),
  "/sharedPreferences":(context)=>SharedPreferencesPage(),
  
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