import 'package:flutter/material.dart';

class TextFieldPage extends StatefulWidget {
  TextFieldPage({Key key}) : super(key: key);

  @override
  _TextFieldPageState createState() => _TextFieldPageState();
}

class _TextFieldPageState extends State<TextFieldPage> {
  var userName = new TextEditingController();     //不赋初值不需要TextEditingController
  String passWord;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    userName.text="初始值";
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('表单演示界面'),),
      body: Padding(
        padding: EdgeInsets.all(10),
        //child: TextDemo(),
        child: Column(
          children: <Widget>[
            TextField(
              decoration: InputDecoration(
                hintText: "请输入用户名",
              ),
              controller: userName,
              onChanged: (value){
                setState(() {
                  userName.text = value;
                });
              },
            ),
            SizedBox(height: 20,),
            TextField(
              obscureText: true,
              decoration: InputDecoration(
                hintText: "密码"
              ),
              onChanged: (value){
                setState(() {
                  passWord = value;
                });
              },
            ),
            Container(
              width: double.infinity,
              height: 40,
              child: RaisedButton(
                child: Text('登陆'),
                onPressed: (){
                  print("用户名：" + userName.text);
                  print("密码：" + passWord);
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}

class TextDemo extends StatelessWidget {
  const TextDemo({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          children: <Widget>[
            TextField(
              decoration: InputDecoration(
                icon: Icon(Icons.people),
                hintText: "输入用户名",
                border: OutlineInputBorder()
              ),
            ),
            SizedBox(height: 20,),
            TextField(
              maxLines: 4,    //多行文本框
              decoration: InputDecoration(
                hintText: "请输入搜索内容",
                border: OutlineInputBorder()
              ),
            ),
            SizedBox(height: 20,),
            TextField(
              obscureText: true,
              decoration: InputDecoration(
                hintText: "密码框",
                border: OutlineInputBorder(),
                labelText: "密码",
              ),
            )
          ],
        ),
      );
  }
}