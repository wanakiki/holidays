// Wrap组件，实现类似流布局，mainAxis空间不足时，自动向crossAxis扩展显示
// 主要参数 direction 主轴方向，alignment 主轴对齐方式，spading 主轴上的间距，runSpacing 行间距
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
        body: LayoutDemoWrap(),
      ),
      theme: ThemeData(primarySwatch: Colors.green),
    );
  }
}

class LayoutDemoWrap extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Wrap(
      spacing: 10,
      direction: Axis.vertical,
      //runSpacing: 40,
      alignment: WrapAlignment.center,
      children: <Widget>[
        MyButton('第一集'),
        MyButton('第二集'),
        MyButton('第三集'),
        MyButton('第四集'),
        MyButton('第五集'),
        MyButton('第六集'),
        MyButton('第七集'),
        MyButton('第八集'),
        MyButton('第九集'),
        MyButton('第十集'),
      ],
    );
  }
}

class MyButton extends StatelessWidget{
  final String text;
  MyButton(this.text);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return RaisedButton(
      child: Text(this.text),
      textColor: Theme.of(context).accentColor,
      onPressed: (){

      },
    );
  }
}

