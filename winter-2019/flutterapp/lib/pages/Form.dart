import 'package:flutter/material.dart';

class FormPage extends StatefulWidget {
  FormPage({Key key}) : super(key: key);

  @override
  _FormPageState createState() => _FormPageState();
}

class _FormPageState extends State<FormPage> {
  String title;
  _FormPageState({this.title='test'});
  @override
  Widget build(BuildContext context) {
    return Container(
      // 占整个页面 需要用Scaffold
       child: Scaffold(
         appBar: AppBar(
           title: Text('From Page'),
         ),
         body: ListView(
           children: <Widget>[
             ListTile(
               title: Text('表单页面'),
             ),
             ListTile(
               title: Text('表单页面'),
             ),
             ListTile(
               title: Text('表单页面'),
             ),
             ListTile(
               title: Text('表单页面'),
             ),
           ],
         ),
       ),
    );
  }
}