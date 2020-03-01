// bottomnavigationBar，item属性的元素为bottomnavigationBarItem 
import 'package:flutter/material.dart';
import 'package:myapp/pages/Form.dart';
import 'res/listData.dart'; //使用外部数据
import 'pages/tabs/Tabs.dart';
import 'pages/Search.dart';
import 'routes/routes.dart';
import 'package:flutter_localizations/flutter_localizations.dart';



void main() {
  runApp(MyApp());
}

//自定义组件
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      //home: Tabs(),   // 路由中定义了'/'，不需要使用home
      debugShowCheckedModeBanner: false,    //是否显示debug标签
      
      //initialRoute: '/appBarDemo',    //初始加载路由
      routes: routes,   //定义路由
      theme: ThemeData(primarySwatch: Colors.green),

      //国际化
      localizationsDelegates: [                             //此处
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ],
      supportedLocales: [                                   //此处
        const Locale('zh','CH'),
        const Locale('en','US'),
      ],
    );
  }
}

