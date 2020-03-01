import 'package:flutter/material.dart';
import '../Search.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Container(
       child: Column(
         crossAxisAlignment: CrossAxisAlignment.start,
         mainAxisAlignment: MainAxisAlignment.center,
         children: <Widget>[
           RaisedButton(
             child: Text('跳转到搜索页'),
             onPressed: (){
              // 基本路由
              //  Navigator.of(context).push(
              //    MaterialPageRoute(
              //      builder: (context)=>SearchPage()   //路由跳转
              //    )
              //  );

              //命名路由，需要在APP中提前定义
              Navigator.pushNamed(context, '/search');
             },
             color: Theme.of(context).accentColor,
             textTheme: ButtonTextTheme.primary,
           ),
           RaisedButton(
             child: Text('跳转到AppBar'),
             onPressed: (){
               Navigator.pushNamed(context, '/appBarDemo');
             },
           ),
           RaisedButton(
             child: Text('跳转到TabController 顶部切换'),
             onPressed: (){
               Navigator.pushNamed(context, '/tabBarController');
             },
           ),
           RaisedButton(
             child: Text('跳转到按钮演示界面'),
             onPressed: (){
               Navigator.pushNamed(context, '/button');
             },
           ),
           RaisedButton(
             child: Text('TextField界面'),
             onPressed: (){
               Navigator.pushNamed(context, '/textField');
             },
           ),
           RaisedButton(
             child: Text('CheckBox界面'),
             onPressed: (){
               Navigator.pushNamed(context, '/checkBox');
             },
           ),
           RaisedButton(
             child: Text('Radio'),
             onPressed: (){
               Navigator.pushNamed(context, '/radio');
             },
           ),
           RaisedButton(
             child: Text('FromDemo'),
             onPressed: (){
               Navigator.pushNamed(context, '/formDemo');
             },
           ),
           RaisedButton(
             child: Text('DatePicker'),
             onPressed: (){
               Navigator.pushNamed(context, '/datePicker');
             },
           ),
           RaisedButton(
             child: Text('DatePickerPub'),
             onPressed: (){
               Navigator.pushNamed(context, '/datePickerPub');
             },
           )
         ],
       ),
    );
  }
}