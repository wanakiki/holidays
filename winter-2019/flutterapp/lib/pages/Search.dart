import 'package:flutter/material.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({Key key, arguments}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      //search属于页面 需要用scaffold设置主题
      child: Scaffold(
        floatingActionButton: FloatingActionButton(
          child: Text('back'),
          onPressed: (){
            Navigator.of(context).pop();
          },
        ),
        appBar: AppBar(
          title: Text('Search Page'),
        ),
        body: Text('搜索界面内容'),
      ),
    );
  }
}