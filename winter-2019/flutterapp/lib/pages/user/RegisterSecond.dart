import 'package:flutter/material.dart';
import '../tabs/Tabs.dart';

class RegisterSecondPage extends StatelessWidget {
  const RegisterSecondPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('第二个注册界面'),
      ),
      body: Container(
        child: ListView(
          children: <Widget>[
            Text('第二个注册界面'),
            RaisedButton(
              child: Text('提交按钮'),
              onPressed: () {

                //返回到根
                Navigator.of(context).pushAndRemoveUntil(
                  new MaterialPageRoute(builder: (context)=>new Tabs(index:1)),
                  (route) => route == null
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
