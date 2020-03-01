// 页面布局，Stack层叠组件，结合Align Position实现定位布局
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
        body: LayoutDemoStacks(),
      ),
      theme: ThemeData(primarySwatch: Colors.green),
    );
  }
}

//基本Stack
class LayoutDemoStack extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Center(
      child: Stack(
        //alignment控制所有元素的方位
        //alignment: Alignment.bottomLeft,
        alignment: Alignment(0, 0), //坐标为[-1, 1]
        children: <Widget>[
          Container(
            height: 400,
            width: 300,
            color: Colors.red,
          ),
          Text(
            '我是文本1',
            style: TextStyle(fontSize: 40, color: Colors.white),
          ),
          //Text('我是文本2222'),
        ],
      ),
    );
  }
}

class LayoutDemoStacks extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Center(
      child: Container(
        height: 400,
        width: 300,
        color: Colors.red,
        child: Stack(
          children: <Widget>[
            Align(
              alignment: Alignment.topCenter,
              child: Icon(Icons.home, size:40, color: Colors.white,),
            ),

            //绝对定位
            Positioned(
              top: 200,
              left: 10,
              child: Icon(Icons.search, size:40, color: Colors.white,),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Icon(Icons.send, size:40, color: Colors.white,),
            )
          ],
        ),
      ),
    );
  }
}
