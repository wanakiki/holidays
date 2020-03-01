import 'package:flutter/material.dart';

class SettingPage extends StatefulWidget {
  SettingPage({Key key}) : super(key: key);

  @override
  _SettingPageState createState() => _SettingPageState();
}

class _SettingPageState extends State<SettingPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
       child: ListView(
         children: <Widget>[
           ListTile(
             title: Text('设置界面'),
           ),
           Column(
             children: <Widget>[
               RaisedButton(
                 child: Text("跳转到登录界面"),
                 onPressed: (){
                   Navigator.pushNamed(context, '/login');
                 },
               ),
               RaisedButton(
                 child: Text('跳转到注册界面'),
                 onPressed: (){
                   Navigator.pushNamed(context, '/registerFirst');
                 },
               )
             ],
           )
         ],
       ),
    );
  }
}