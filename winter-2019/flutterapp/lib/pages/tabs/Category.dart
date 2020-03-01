import 'package:flutter/material.dart';
import 'package:myapp/pages/tabs/Tabs.dart';
import '../Form.dart';

class CategoryPage extends StatefulWidget {
  CategoryPage({Key key}) : super(key: key);

  @override
  _CategoryPageState createState() => _CategoryPageState();
}

class _CategoryPageState extends State<CategoryPage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: Row(
          children: <Widget>[
            Expanded(
              child: TabBar(
                isScrollable: true,   //如果有多个可以滑动
                tabs: <Widget>[
                  Tab(
                    text: "热门",
                  ),
                  Tab(
                    text: "推荐",
                  )
                ],
              ),
            )
          ],
        )),
        body: TabBarView(
          children: <Widget>[
            ListView(
              children: <Widget>[
                ListTile(
                  title: Text('第一个tab'),
                )
              ],
            ),
            ListView(
              children: <Widget>[
                ListTile(
                  title: Text('第二个tab'),
                )
              ],
            )
          ],
        ),
      ),
    );
    // return Container(
    //    child: Column(
    //      crossAxisAlignment: CrossAxisAlignment.start,
    //      mainAxisAlignment: MainAxisAlignment.center,
    //      children: <Widget>[
    //        RaisedButton(
    //          child: Text('跳转到表单页面'),
    //          onPressed: (){
    //            Navigator.of(context).push(
    //              MaterialPageRoute(
    //                builder: (context)=>FormPage()
    //              )
    //            );
    //          },
    //          color: Theme.of(context).accentColor,
    //          textTheme: ButtonTextTheme.primary,
    //        ),
    //      ],
    //    ),
    // );
  }
}
