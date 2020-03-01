//Container Text
import 'package:flutter/material.dart';

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
        body: HomeContent(),
      ),
      theme: ThemeData(
        primarySwatch: Colors.green
      ),
    );
  }
}

//额外组件
class HomeContent extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Center(
      child: Container(
        child: Text(
          '示例文本，会超过containter的长度，用以测试overflow',
          textAlign: TextAlign.left,
          overflow: TextOverflow.ellipsis,
          textScaleFactor: 2,   //对比原生放大的倍数

          style: TextStyle(
            fontSize: 16,
            color: Colors.red,
            fontWeight: FontWeight.w800
          ),
        ),
        height: 300,
        width: 300,
        decoration: BoxDecoration(
          color: Colors.green,
          border: Border.all(
            color: Colors.blue,
            width: 2
          ),
          borderRadius: BorderRadius.all(
            Radius.circular(10)
          )
        ),
        //padding: EdgeInsets.all(20),
        padding: EdgeInsets.fromLTRB(10, 10, 10, 10),

        //transform: Matrix4.translationValues(10, 0, 0),
        transform: Matrix4.rotationZ(0.3),  //负数代表逆时针
      ),
    );
  }
}