import 'package:flutter/material.dart';
import 'package:date_format/date_format.dart';

class DatePickerPage extends StatefulWidget {
  DatePickerPage({Key key}) : super(key: key);

  @override
  _DatePickerPageState createState() => _DatePickerPageState();
}

class _DatePickerPageState extends State<DatePickerPage> {

  var now = DateTime.now();
  var nowTime = TimeOfDay.now();

  // _showDatePicker(){
  //   showDatePicker(context: context, initialDate: now, firstDate: DateTime(1980), lastDate: DateTime(2100)).then((result){
  //     print(result);
  //   });
  // }

  //异步写法
  _showDatePicker() async{
    var res = await showDatePicker(context: context, initialDate: now, firstDate: DateTime(1980), lastDate: DateTime(2100));
    print(res);
    if(res != null)
      setState(() {
        now = res;
      });
  }

  _showTimePicker() async{
    var res = await showTimePicker(context: context, initialTime: nowTime);
    if(res != null){
      setState(() {
      nowTime = res;
    });
    }
    
    print(nowTime.format(context));
  }
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    print(now);
    print(now.millisecondsSinceEpoch);
    print(DateTime.fromMillisecondsSinceEpoch(now.millisecondsSinceEpoch));
    print(formatDate(DateTime.now(), [yyyy, '年', mm, '月', dd]));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('DatePicker'),),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              InkWell(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text('${formatDate(now, [yyyy,'年',mm,'月',dd])}'),
                Icon(Icons.arrow_drop_down),
              ],
            ),
            onTap: _showDatePicker,
          ),
          InkWell(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text('${nowTime.format(context)}'),
                Icon(Icons.arrow_drop_down),
              ],
            ),
            onTap: _showTimePicker,
          )
            ],
          )
        ],
      ),
    );
  }
}