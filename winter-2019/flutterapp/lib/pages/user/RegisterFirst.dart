import 'package:flutter/material.dart';

class RegisterFirstPage extends StatelessWidget {
  const RegisterFirstPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('第一个注册界面'),
      ),
      body: Container(
        child: ListView(
          children: <Widget>[
            Text('第一个注册界面（点击后跳转到第二个注册界面）'),
            RaisedButton(
              child: Text('提交按钮'),
              onPressed: () {
                //Navigator.pushNamed(context, '/registerFirst');
                
                //替换路由
                Navigator.of(context).pushReplacementNamed('/registerSecond');    //此时在第二个界面点返回会返回设置界面
              },
            )
          ],
        ),
      ),
    );
  }
}
