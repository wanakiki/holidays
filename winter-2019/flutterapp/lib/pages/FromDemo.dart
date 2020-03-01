import 'package:flutter/material.dart';

class FromDemoPage extends StatefulWidget {
  FromDemoPage({Key key}) : super(key: key);

  @override
  _FromDemoPageState createState() => _FromDemoPageState();
}

class _FromDemoPageState extends State<FromDemoPage> {
  int sex = 1;
  var hobby = {"骑车": false, "打代码": false, "羽毛球": false, "乒乓球": false};
  String userName;
  String info = '';

  List<Widget> _getCheckBox() {
    List<Widget> res = new List();  //务必写上new
    hobby.forEach((k, v) {
      res.add(new Container(
        width: 100,
        child: Row(
          children: <Widget>[
            Checkbox(
              value: v,
              onChanged: (value) {
                setState(() {
                  hobby[k] = value;
                });
              },
            ),
            Text(k)
          ],
        ),
      ));
    });
    return res;
  }

  void _sexChange(v) {
    setState(() {
      sex = v;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('FromDemo'),
      ),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          children: <Widget>[
            TextField(
              decoration: InputDecoration(
                hintText: "输入用户名信息"
              ),
              onChanged: (v){
                setState(() {
                  userName = v;
                });
              },
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Radio(
                  value: 1,
                  groupValue: sex,
                  onChanged: _sexChange,
                ),
                Text('男'),
                Radio(
                  value: 2,
                  groupValue: sex,
                  onChanged: _sexChange,
                ),
                Text('女'),
              ],
            ),
            Wrap(
              children: _getCheckBox(),
            ),
            SizedBox(height: 10,),
            TextField(
              maxLines: 4,
              decoration: InputDecoration(
                labelText: '描述信息',
                border: OutlineInputBorder()
              ),
              onChanged: (v){
                setState(() {
                  info = v;
                });
              },
            ),
            SizedBox(height: 10,),
            Container(
              width: double.infinity,
              height: 40,
              child: RaisedButton(
                child: Text('登陆'),
                onPressed: (){
                  print(userName);
                  print(info);
                },
                color: Colors.blue,
                textColor: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
