import 'package:flutter/material.dart';
import 'Category.dart';
import 'Home.dart';
import 'Setting.dart';

class Tabs extends StatefulWidget {
  final index;
  Tabs({Key key, this.index = 0}) : super(key: key);

  @override
  _TabsState createState() => _TabsState(this.index);
}

class _TabsState extends State<Tabs> {
  int _currentIndex = 0;
  List _pageList = [
    HomePage(),
    CategoryPage(),
    SettingPage(),
  ];

  _TabsState(index) {
    _currentIndex = index;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        appBar: AppBar(
          title: Text('Flutter Demo'),
        ),
        body: this._pageList[this._currentIndex],
        floatingActionButton: Container(
          height: 50,
          width: 50,
          padding: EdgeInsets.all(3),
          margin: EdgeInsets.only(top:10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(40),
            color: Colors.white,
          ),
          child: FloatingActionButton(
            child: Icon(Icons.add),
            onPressed: () {
              setState(() {
                this._currentIndex = 1;
              });
            },
            backgroundColor: this._currentIndex==1?Colors.red:Colors.yellow,
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: this._currentIndex, //表示默认选中第几个
          onTap: (int index) {
            setState(() {
              this._currentIndex = index;
            });
          },
          fixedColor: Colors.red, //选中颜色
          type: BottomNavigationBarType.fixed, //配置显示模式
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              title: Text('首页'),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.category),
              title: Text('分类'),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.settings),
              title: Text('设置'),
            ),
          ],
        ),

        //左侧侧边栏
        drawer: Drawer(
            child: Column(
          children: <Widget>[
            //用户头部第一种实现 DrawHeader
            Row(
              children: <Widget>[
                Expanded(
                  child: DrawerHeader(
                    child: Text("你好Drawler"),
                    decoration: BoxDecoration(
                        //color: Colors.yellow,
                        image: DecorationImage(
                            image: NetworkImage(
                                "https://www.itying.com/images/flutter/2.png"),
                            fit: BoxFit.cover)),
                  ),
                )
              ],
            ),

            //侧边栏用户头部第二种实现 UserAccountDrawerHeader
            Row(
              children: <Widget>[
                Expanded(
                  child: UserAccountsDrawerHeader(
                    accountName: Text("小白菜"),
                    accountEmail: Text("dajsodjio@qq.cpm"),
                    currentAccountPicture: CircleAvatar(
                      backgroundImage: NetworkImage(
                          "https://www.itying.com/images/flutter/3.png"),
                    ),
                    decoration: BoxDecoration(
                        image: DecorationImage(
                      image: NetworkImage(
                          "https://www.itying.com/images/flutter/2.png"),
                      fit: BoxFit.cover,
                    )),
                    otherAccountsPictures: <Widget>[
                      Image.network(
                          "https://www.itying.com/images/flutter/4.png"),
                      Image.network(
                          "https://www.itying.com/images/flutter/5.png"),
                    ],
                  ),
                )
              ],
            ),
            ListTile(
              leading: CircleAvatar(
                child: Icon(Icons.home),
              ),
              title: Text('我的空间'),
            ),
            Divider(),
            ListTile(
              leading: CircleAvatar(
                child: Icon(Icons.people),
              ),
              title: Text('用户中心'),
              onTap: () {
                Navigator.of(context).pop(); //隐藏侧边栏
                Navigator.pushNamed(context, '/user');
              },
            ),
            Divider(),
            ListTile(
              leading: CircleAvatar(
                child: Icon(Icons.settings),
              ),
              title: Text('设置中心'),
            ),
            Divider(),
          ],
        )),
        endDrawer: Drawer(
          child: Text("右侧侧边栏"),
        ),
      ),
    );
  }
}
