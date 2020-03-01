import 'dart:ffi';

import 'package:flutter/material.dart';

class ButtonPage extends StatelessWidget {
  const ButtonPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('按钮演示'),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.settings),
              onPressed: (){},
            )
          ],
        ),

        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add, color: Colors.red,),
          backgroundColor: Colors.blue,
          onPressed: (){},
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                RaisedButton(
                  child: Text('普通按钮'),
                  color: Colors.blue, //按钮颜色
                  textColor: Colors.white, //字体颜色
                  elevation: 10, //阴影效果，值越大越强
                  onPressed: () {
                    print('普通按钮');
                  },
                ),
                SizedBox(width: 10,),
                RaisedButton.icon(
                  icon: Icon(Icons.search),
                  label: Text('图标按钮'),
                  onPressed: (){

                  },
                )
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                RaisedButton(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)
                  ),
                  child: Text('圆角按钮'),
                  onPressed: (){},
                ),
                SizedBox(width: 10,),
                RaisedButton(
                  shape: CircleBorder(
                    side: BorderSide(
                      color: Colors.white
                    )
                  ),
                  child: Text('圆形按钮'),
                  onPressed: (){},
                )
              ],
            ),
            SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  height: 50,
                  width: 200,
                  child: RaisedButton(
                    child: Text('控制按钮大小'),
                    onPressed: () {
                      print("控制按钮大小(通过Container)");
                    },
                  ),
                )
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Expanded(
                  child: Container(
                    height: 60,
                    margin: EdgeInsets.all(10),
                    child: RaisedButton(
                      child: Text('自适应按钮'),
                      onPressed: () {
                        print('自适应按钮 ');
                      },
                    ),
                  ),
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                FlatButton(
                  child: Text('flat按钮'),
                  color: Colors.blue,
                  textColor: Colors.yellow,
                  onPressed: (){},
                ),
                SizedBox(width: 10,),
                OutlineButton(
                  child: Text('Outline'),
                  onPressed: (){},
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                ButtonBar(
                  children: <Widget>[
                    RaisedButton(child:Text('登陆'), onPressed: (){},),
                    RaisedButton(child:Text('注册'), onPressed: (){},),
                    RaisedButton(child:Text('注销'), onPressed: (){},),
                    RaisedButton(child:Text('←ButtonBar'), onPressed: (){},),
                  ],
                )
              ],
            )
          ],
        ));
  }
}
