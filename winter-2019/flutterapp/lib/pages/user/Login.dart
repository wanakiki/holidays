import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('登陆界面'),
      ),
      body: Container(
        child: ListView(
          children: <Widget>[
            Text('这是登陆界面界面'),
            RaisedButton(
              child: Text('登陆(点击后返回）'),
              onPressed: () {
                //Navigator.of(context).pop();  //返回
                Navigator.pop(context);
              },
            )
          ],
        ),
      ),
    );
  }
}
