//GridView 网格列表组件
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
        body: HomeContent2(),
      ),
      theme: ThemeData(primarySwatch: Colors.green),
    );
  }
}

//动态网格
class HomeContent2 extends StatelessWidget{
  Widget _getListData(context, index){
    return Container(
      decoration: BoxDecoration(
        //color: Colors.yellow,
        border: Border.all(
          color: Colors.red,
          width: 1
        )
      ),
      child: Column(
        children: <Widget>[
          Image.network(listData[index]['imageUrl']),
          SizedBox(height: 13,),
          Text(
            listData[index]['title'],
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
              fontSize: 18
            ),
          )
        ],
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return GridView.builder(
      // 配置间距等信息
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,  //设置列数
        crossAxisSpacing: 15,   //左右距离
        mainAxisSpacing: 15,    //上下距离
      ),
      padding: EdgeInsets.all(8),
    
      itemCount: listData.length,
      itemBuilder: this._getListData,
    );
  }
}
// 静态网格
class HomeContent1 extends StatelessWidget{
  List<Widget> _getData(){
    List<Widget> list = new List();
    for (var i = 0; i < 20; i++){
      list.add(Container(
        alignment: Alignment.center,
        child: Text(
          '第$i个文本',
          style: TextStyle(fontSize: 20, color: Colors.white),
        ),
        color: Colors.blue,
      ));
    }
    return list;
  }

  List<Widget> _getData2(){
    var tmp = listData.map((value){
      return Container(
        //column与ListView的区别在于前者不会自适应
        child: Column(
          children: <Widget>[
            Image.network(value['imageUrl']),
            SizedBox(height: 13,),
            Text(
              value['title'],
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                fontSize: 18
              ),
            ),
          ],
        ),

        decoration: BoxDecoration(
          border: Border.all(
            color: Colors.red,
            width: 1
          )
        ),
      );
    });
    return tmp.toList();
  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return GridView.count(
      crossAxisCount: 2,  //设置列数
      crossAxisSpacing: 15,   //左右距离
      mainAxisSpacing: 15,    //上下距离
      padding: EdgeInsets.all(8),   //内边距

      //childAspectRatio: 0.7,    //Widget宽高比例
      children: this._getData2(),

      // children: <Widget>[
      //   Text('这是一个文本'),
      //   Text('这是一个文本'),
      //   Text('这是一个文本'),
      //   Text('这是一个文本'),
      //   Text('这是一个文本'),
      //   Text('这是一个文本'),
      //   Text('这是一个文本'),
      //   Text('这是一个文本'),
      // ],
    );
  }
}