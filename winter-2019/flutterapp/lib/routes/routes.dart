
import 'package:flutter/material.dart';
import 'package:myapp/pages/CheckBox.dart';

import '../pages/tabs/Tabs.dart';
import '../pages/Form.dart';
import '../pages/Search.dart';
import '../pages/user/Login.dart';
import '../pages/user/RegisterFirst.dart';
import '../pages/user/RegisterSecond.dart';

import '../pages/AppBarDemo.dart';
import '../pages/TabBarController.dart';
import '../pages/User.dart';
import '../pages/Button.dart';
import '../pages/TextField.dart';
import '../pages/Radio.dart';
import '../pages/FromDemo.dart';
import '../pages/DatePicker.dart';
import '../pages/DatePickerPub.dart';

//配置路由
final routes={
  '/': (context)=>Tabs(),
  '/form': (context)=>FormPage(),
  '/search': (context, {arguments})=>SearchPage(arguments:arguments),
  '/login': (context)=>LoginPage(),
  '/registerFirst':(context)=>RegisterFirstPage(),
  '/registerSecond':(context)=>RegisterSecondPage(),
  '/appBarDemo': (context)=>AppBarDemoPage(),
  '/tabBarController': (context)=>TabBarControllerPage(),
  '/user': (context)=>UserPage(),
  '/button':(context)=>ButtonPage(),
  '/textField':(context)=>TextFieldPage(),
  '/checkBox':(context)=>CheckBoxPage(),
  '/radio':(context)=>RadioPage(),
  '/formDemo':(context)=>FromDemoPage(),
  '/datePicker':(context)=>DatePickerPage(),
  '/datePickerPub':(context)=>DatePickerPubPage(),
};

var onGenerateRoute=(RouteSettings settings) {
  final String name = settings.name;
  final Function pageContentBuilder = routes[name];
  if(pageContentBuilder != null){
    if(settings.arguments != null) {
      final Route route = MaterialPageRoute(
        builder: (context)=>pageContentBuilder(context, arguments: settings.arguments)
      );
      return route;
    }else{
      final Route route = MaterialPageRoute(
        builder: (context)=>pageContentBuilder(context)
      );
      return route;
    }
  }
};