import 'package:flutter/material.dart';

class CheckBoxPage extends StatefulWidget {
  CheckBoxPage({Key key}) : super(key: key);

  @override
  _CheckBoxPageState createState() => _CheckBoxPageState();
}

class _CheckBoxPageState extends State<CheckBoxPage> {
  var flag = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('CheckBox'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Checkbox(
                value: flag,
                activeColor: Colors.red,
                onChanged: (value){
                  setState(() {
                    flag = value;
                  });
                },
              ),
              Text(this.flag?"选中":"未选中"),
            ],
          ),
          SizedBox(height: 20,),
          CheckboxListTile(
            value: flag,
            onChanged: (value){
              setState(() {
                flag = value;
              });
            },
            title: Text('标题'),
            subtitle: Text('二级标题'),
            secondary: Icon(Icons.settings),
          ),
          Divider(),
        ],
      ),
    );
  }
}