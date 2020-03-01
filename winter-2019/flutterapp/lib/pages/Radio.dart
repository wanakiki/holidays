import 'package:flutter/material.dart';

//value onchange groupvalue 必须配置

class RadioPage extends StatefulWidget {
  RadioPage({Key key}) : super(key: key);

  @override
  _RadioPageState createState() => _RadioPageState();
}

class _RadioPageState extends State<RadioPage> {
  var sex = 1;
  bool flag = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Radio Switch'),),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          children: <Widget>[
            Row(
              children: <Widget>[
                Radio(
                  value: 1,
                  onChanged: (v){
                    setState(() {
                      sex = v;
                    });
                  },
                  groupValue: sex,
                ),
                Text('男'),
                Radio(
                  value: 2,
                  onChanged: (v){
                    setState(() {
                      sex = v;
                    });
                  },
                  groupValue: sex,
                ),
                Text('女'),
              ],
            ),
            Row(
              children: <Widget>[
                Text(sex == 1?"男":"女")
              ],
            ),
            RadioListTile(
              value: 1,
              onChanged: (v){
                setState(() {
                  sex = v;
                });
              },
              groupValue: sex,
              title: Text('标题'),
              subtitle: Text('子标题'),
              secondary: Icon(Icons.help),
              selected: sex == 1,
            ),
            RadioListTile(
              value: 2,
              onChanged: (v){
                setState(() {
                  sex = v;
                });
              },
              groupValue: sex,
              title: Text('标题'),
              subtitle: Text('子标题'),
              secondary: Icon(Icons.help),
              selected: sex == 2,
            ),
            Switch(
              value: flag,
              onChanged: (v){
                setState(() {
                  print(flag);
                  flag = v;
                });
              },
            )
          ],
        ),
      ),
    );
  }
}