// AspectRatio组件，设置调整子元素的宽高比，尽量布满父元素
// Card 组件，实现卡片效果 margin child shape
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
        body: LayoutDemoCardExternal(),
      ),
      theme: ThemeData(primarySwatch: Colors.green),
    );
  }
}

//如果直接返回AspectRatio 则相对于整个屏幕
class LayoutDemoAspectRatio extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      width: 300,
      child: AspectRatio(
        aspectRatio: 2/1,
        child: Container(
          color: Colors.red,
        ),
      ),
    );
  }
}

class LayoutDemoCard extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ListView(
      children: <Widget>[
        Card(
          margin: EdgeInsets.all(10),
          //ListView无法嵌套ListView
          child: Column(
            children: <Widget>[
              ListTile(
                title: Text('张三', style: TextStyle(fontSize: 28),),
                subtitle: Text('高级工程师'),
              ),
              ListTile(
                title: Text('电话：xxx'),
              ),
              ListTile(
                title: Text('地址：xxx'),
              )
            ],
          ),
        ),
         Card(
          margin: EdgeInsets.all(10),
          //ListView无法嵌套ListView
          child: Column(
            children: <Widget>[
              ListTile(
                title: Text('李四', style: TextStyle(fontSize: 28),),
                subtitle: Text('高级工程师'),
              ),
              ListTile(
                title: Text('电话：xxx'),
              ),
              ListTile(
                title: Text('地址：xxx'),
              )
            ],
          ),
        ),
         Card(
          margin: EdgeInsets.all(10),
          //ListView无法嵌套ListView
          child: Column(
            children: <Widget>[
              ListTile(
                title: Text('王五', style: TextStyle(fontSize: 28),),
                subtitle: Text('高级工程师'),
              ),
              ListTile(
                title: Text('电话：xxx'),
              ),
              ListTile(
                title: Text('地址：xxx'),
              )
            ],
          ),
        )
      ],
    );
  }
}

// 使用卡片进行复杂布局
class LayoutDemoCardComplex extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ListView(
      children: <Widget>[
        Card(
          margin: EdgeInsets.all(10),
          child: Column(
            children: <Widget>[
              //Image.network('https://www.itying.com/images/flutter/1.png'),
              AspectRatio(
                aspectRatio: 20/9,  //控制图片宽高比
                child: Image.network('https://www.itying.com/images/flutter/1.png', fit: BoxFit.cover,),
              ),
              ListTile(
                leading: ClipOval(
                  child: Image.network('https://www.itying.com/images/flutter/1.png', fit: BoxFit.cover,height: 60,width: 60,),
                ),
                title: Text('这是一个图片'),
                subtitle: Text('使用ClipOver绘制头像'),
              )
            ],
          ),
        ),
        Card(
          margin: EdgeInsets.all(10),
          child: Column(
            children: <Widget>[
              AspectRatio(
                aspectRatio: 20/9,  //控制图片宽高比
                child: Image.network('https://www.itying.com/images/flutter/2.png', fit: BoxFit.cover,),
              ),
              ListTile(
                leading: CircleAvatar(
                  backgroundImage: NetworkImage('https://www.itying.com/images/flutter/2.png'),
                ),
                title: Text('这是一个图片'),
                subtitle: Text('使用CircleAvatar绘制头像'),
              )
            ],
          ),
        )
      ],
    );
  }
}

//导入外部数据进行动态生成界面
class LayoutDemoCardExternal extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ListView(
      children: listData.map((value){
        return Card(
          margin: EdgeInsets.all(10),
          child: Column(
            children: <Widget>[
              AspectRatio(
                aspectRatio: 16/9,
                child: Image.network(value['imageUrl'], fit: BoxFit.cover,),
              ),
              ListTile(
                leading: CircleAvatar(
                  backgroundImage: NetworkImage(value['imageUrl']),
                ),
                title: Text(value['title']),
                subtitle: Text(value['author']),
              )
            ],
          ),
        );
      }).toList(),
    );
  }
}