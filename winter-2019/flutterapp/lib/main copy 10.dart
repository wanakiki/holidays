// statelesswidget
import 'package:flutter/material.dart';
import 'res/listData.dart'; //使用外部数据

void main() {
  runApp(MyApp());
}

//自定义组件
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Flutter Demo'),
        ),
        body: HomePage2(),
      ),
      theme: ThemeData(primarySwatch: Colors.green),
    );
  }
}

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int countNum = 0;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        SizedBox(
          height: 200,
        ),
        Chip(
          label: Text('${this.countNum}'),
        ),
        SizedBox(
          height: 10,
        ),
        RaisedButton(
          child: Text('按钮'),
          textColor: Theme.of(context).accentColor,
          onPressed: () {
            setState(() {
              this.countNum++;
            });
          },
        )
      ],
    );
  }
}

// 动态增加list内容
class HomePage2 extends StatefulWidget {
  HomePage2({Key key}) : super(key: key);

  @override
  _HomePage2State createState() => _HomePage2State();
}

class _HomePage2State extends State<HomePage2> {
  List list = new List();
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: ListView(
          children: <Widget>[
            Column(
              children: list.map((value) {
                return ListTile(
                  title: Text(value),
                );
              }).toList(),
            ),
            RaisedButton(
              child: Text("按钮"),
              onPressed: (){
                setState(() {
                  this.list.add('新增数据1');
                  this.list.add('新增数据2');
                });
              },
            )
          ],
        ),
      ),
    );
  }
}
