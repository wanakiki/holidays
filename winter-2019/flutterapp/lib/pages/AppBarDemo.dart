//自定义顶部导航按钮及切换
import 'package:flutter/material.dart';

class AppBarDemoPage extends StatelessWidget {
  const AppBarDemoPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,   //必须配置
      child: Scaffold(
        appBar: AppBar(
          title: Text("AppBarDemoPage"),

          backgroundColor: Colors.blue, //导航背景色
          centerTitle: true, //标题居中

          leading: IconButton(
            icon: Icon(Icons.menu),
            onPressed: () {
              print('menu');
            },
          ),

          //右侧按钮
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.search),
              onPressed: () {
                print('search');
              },
            )
          ],

          bottom: TabBar(
            tabs: <Widget>[
              Tab(text: "热门",),
              Tab(text: "推荐",)
            ],
          ),
        ),

        body: TabBarView(
          children: <Widget>[
            ListView(
              children: <Widget>[
                ListTile(title: Text('第一个tab'),)
              ],
            ),
            ListView(
              children: <Widget>[
                ListTile(title: Text('第二个tab'),)
              ],
            ),
          ],
        ),
      ),
    );
  }
}
