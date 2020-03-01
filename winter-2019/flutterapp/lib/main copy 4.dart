//ListView 列表组件
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
        body: HomeContent6(),
      ),
      theme: ThemeData(primarySwatch: Colors.green),
    );
  }
}

//动态列表 使用 ListView 自带的Builder，实现2
class HomeContent6 extends StatelessWidget{
  Widget _getListData(context, index){
    return ListTile(
      leading: Image.network(listData[index]['imageUrl']),
      title: Text(listData[index]['title']),
      subtitle: Text(listData[index]['author']),
    );
  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ListView.builder(
      itemCount: listData.length,
      itemBuilder: this._getListData, //传递函数名
    );
  }
}

//动态列表 使用 ListView 自带的Builder，实现1
class HomeContent5 extends StatelessWidget{
  List list = new List();
  HomeContent5(){
    for(var i = 0; i < 20; i++){
      this.list.add(ListTile(
        title: Text('我是第$i个列表'),
      ));
    }
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ListView.builder(
      //指定长度和构造方法
      itemCount: this.list.length,
      itemBuilder: (context, index){
        return this.list[index];
      },
    );
  }
}

//动态列表
class HomeContent4 extends StatelessWidget{
  //自定义方法
  List<Widget> _getData1(){
    return [
        ListTile(
          title: Text('我是列表'),
        ),
        ListTile(title: Text('我是列表'),),
        ListTile(title: Text('我是列表'),)
      ];
  }

  List<Widget> _getData2(){
    List<Widget> res = new List();
    for(var i = 1; i <= 10; i++){
      res.add(ListTile(
        title: Text("我是第$i个列表"),
      ));
    }
    return res;
  }

  List<Widget> _getData3(){
    var tmpList = listData.map((value){
      return ListTile(
        title: Text(value['title']),
        subtitle: Text(value['author']),
        leading: Image.network(value['imageUrl']),
      );
    });
    return tmpList.toList();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ListView(
      children: this._getData3(),
    );
  }
}

//ListView 水平列表
class HomeContent3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
        height: 180,  //ListView 会自动扩展长度或高度，用Container进行限制

        child: ListView(
          scrollDirection: Axis.horizontal, //默认为垂直列表需要修改为水平
          children: <Widget>[
            Container(
              width: 100,
              height: 100,
              color: Colors.purpleAccent,
            ),
            Container(
              width: 100,
              height: 100,
              color: Colors.deepOrange,
              child: ListView(
                children: <Widget>[
                  Image.network('http://www.sinaimg.cn/dy/slidenews/1_img/2017_30/88490_1349796_679708.jpg', fit: BoxFit.contain,),
                  Text('示例文本', textAlign: TextAlign.center,)
                ],
              ), 
            ),
            Container(
              width: 100,
              height: 100,
              color: Colors.blueAccent,
            ),
            Container(
              width: 100,
              height: 100,
              color: Colors.yellow,
            ),
            Container(
              width: 100,
              height: 100,
              color: Colors.greenAccent,
            )
          ],
        ));
  }
}

//ListView Image Container 图文列表（水平）
class HomeContent2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ListView(
      padding: EdgeInsets.all(10),
      children: <Widget>[
        Image.network(
            'http://www.sinaimg.cn/dy/slidenews/1_img/2017_30/88490_1349736_355433.jpg'),
        Container(
          child: Text(
            '标题（隔开两个图片）',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 18),
          ),
          //height: 10,
        ),
        Image.network(
            'http://www.sinaimg.cn/dy/slidenews/1_img/2017_30/88490_1349795_149753.jpg'),
      ],
    );
  }
}

//ListView ListTile 垂直列表
class HomeContent1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ListView(
      children: <Widget>[
        //最普通的列表ListTile
        ListTile(
          leading: Icon(
            Icons.settings,
            color: Colors.yellow,
            size: 30,
          ),
          title: Text('众志成城 不让疫情魔鬼藏匿！'),
          subtitle: Text(
              "月28日，国家主席习近平在人民大会堂会见世界卫生组织总干事谭德塞。习近平在会见中指出：“疫情是魔鬼，我们不能让魔鬼藏匿。”"),
        ),
        ListTile(
          title: Text('众志成城 不让疫情魔鬼藏匿！'),
          subtitle: Text(
              "月28日，国家主席习近平在人民大会堂会见世界卫生组织总干事谭德塞。习近平在会见中指出：“疫情是魔鬼，我们不能让魔鬼藏匿。”"),
          trailing: Icon(
            Icons.home,
            color: Colors.blue,
          ),
        ),
        ListTile(
          leading: Image.network(
            'https://box.bdimg.com/static/fisp_static/common/img/searchbox/logo_news_276_88_1f9876a.png',
            width: 100,
          ),
          title: Text('图片leading测试'),
          subtitle: Text(
              "月28日，国家主席习近平在人民大会堂会见世界卫生组织总干事谭德塞。习近平在会见中指出：“疫情是魔鬼，我们不能让魔鬼藏匿。”"),
        )
      ],
    );
  }
}
