//Image
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
      child:Container(
        child: ClipOval(
          child: Image.network(
            'https://bkimg.cdn.bcebos.com/pic/b3b7d0a20cf431ad6fd6b4684736acaf2edd985f?x-bce-process=image/watermark,g_7,image_d2F0ZXIvYmFpa2U4MA==,xp_5,yp_5',
            height: 100,
            width: 100,
            fit: BoxFit.cover,
          ),
        ),

        // child: Image.network(
        //   'https://bkimg.cdn.bcebos.com/pic/b3b7d0a20cf431ad6fd6b4684736acaf2edd985f?x-bce-process=image/watermark,g_7,image_d2F0ZXIvYmFpa2U4MA==,xp_5,yp_5',
          
        //   fit: BoxFit.cover,
        //   //repeat: ImageRepeat.repeat,
        // ),
        // height: 800,
        // width: 300,
        
        // decoration: BoxDecoration(
        //   color: Colors.yellow
        // ),
      ),
    );
  }
}