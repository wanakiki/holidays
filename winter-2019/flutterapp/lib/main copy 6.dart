//Padding 、水平布局 Row 组件、垂直布局 Column 组件、Expanded组件
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
        body: LayoutDemoUnite(),
      ),
      theme: ThemeData(primarySwatch: Colors.green),
    );
  }
}

//设置padding的padding child
class LayoutDemoPadding extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Padding(
      padding: EdgeInsets.fromLTRB(0, 0, 10, 0),
      child: GridView.count(
        crossAxisCount: 2,
        children: <Widget>[
          Padding(
            padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
            child: Image.network(
              'https://www.itying.com/images/flutter/1.png',
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
            child: Image.network(
              'https://www.itying.com/images/flutter/2.png',
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
            child: Image.network(
              'https://www.itying.com/images/flutter/3.png',
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
            child: Image.network(
              'https://www.itying.com/images/flutter/4.png',
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
            child: Image.network(
              'https://www.itying.com/images/flutter/5.png',
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
            child: Image.network(
              'https://www.itying.com/images/flutter/6.png',
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
            child: Image.network(
              'https://www.itying.com/images/flutter/7.png',
              fit: BoxFit.cover,
            ),
          ),
        ],
      ),
    );
  }
}

// Row 与 Column 设置方式基本相同，只是二者的主轴相反
class LayoutDemoRow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      height: 600,
      width: 300,
      color: Colors.pink,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          IconContainer(
            Icons.search,
            color: Colors.blue,
          ),
          IconContainer(
            Icons.home,
            color: Colors.orange,
          ),
          IconContainer(
            Icons.arrow_back,
            color: Colors.lime,
          )
        ],
      ),
    );
  }
}

class IconContainer extends StatelessWidget {
  double size;
  Color color;
  IconData icon;
  IconContainer(this.icon, {this.color = Colors.blue, this.size = 45});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      height: 80,
      width: 80,
      decoration: BoxDecoration(
          color: this.color,
          borderRadius: BorderRadius.all(Radius.circular(10))),
      child: Icon(
        this.icon,
        size: this.size,
        color: Colors.white,
      ),
    );
  }
}

// expanded，忽略内部组件定义的尺寸
class LayoutDemoExpanded extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Row(
      children: <Widget>[
        Expanded(
          flex: 1,
          child: IconContainer(Icons.home, color: Colors.blue),
        ),
        Expanded(
          flex: 2,
          child: IconContainer(
            Icons.search,
            color: Colors.orange,
          ),
        ),
        Expanded(
          flex: 1,
          child: IconContainer(
            Icons.arrow_back,
            color: Colors.red,
          ),
        ),
      ],
    );
  }
}

// 多种组件联合
class LayoutDemoUnite extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
      children: <Widget>[
        Row(
          children: <Widget>[
            Expanded(
              child: Container(
                height: 200,
                color: Colors.black,
                child: Text(
                  '你好 flutter',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ],
        ),
        SizedBox(height: 10,),
        Row(
          children: <Widget>[
            Expanded(
                flex: 2,
                child: Container(
                  height: 180,
                  child: Image.network(
                    'https://www.itying.com/images/flutter/1.png',
                    fit: BoxFit.cover,
                  ),
                )),
            SizedBox(
              width: 10,
            ),
            Expanded(
              flex: 1,
              //列表能够自适应宽度，如果使用Column此处图片不能布满
              child: Container(
                height: 180,
                child: ListView(
                children: <Widget>[
                  Container(
                    height: 85,
                    child: Image.network(
                    'https://www.itying.com/images/flutter/2.png',
                    fit: BoxFit.cover,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    height: 85,
                    child: Image.network(
                    'https://www.itying.com/images/flutter/3.png',
                    fit: BoxFit.cover,
                  ),
                  )
                ],
              ),
              ), 
            )
          ],
        )
      ],
    );
  }
}
