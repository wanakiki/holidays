import 'package:flutter/material.dart';
import 'package:flutter_cupertino_date_picker/flutter_cupertino_date_picker.dart';
import 'package:date_format/date_format.dart';

class DatePickerPubPage extends StatefulWidget {
  DatePickerPubPage({Key key}) : super(key: key);

  @override
  _DatePickerPubPageState createState() => _DatePickerPubPageState();
}

class _DatePickerPubPageState extends State<DatePickerPubPage> {

  var curdate = DateTime.now();
  var curtime = TimeOfDay.now();

  void _showDatePicker() {
    DatePicker.showDatePicker(
      context,
      pickerTheme: DateTimePickerTheme(
        showTitle: true,
        confirm: Text('确定', style: TextStyle(color: Colors.red)),
        cancel: Text('取消', style: TextStyle(color: Colors.cyan)),
      ),
      minDateTime: DateTime.parse('1980-05-12'),
      maxDateTime: DateTime.parse('2100-05-02'),
      initialDateTime: curdate,
      dateFormat: 'yy年M月d日    EEE,H时:m分',
      pickerMode: DateTimePickerMode.datetime,
      locale: DateTimePickerLocale.zh_cn,
      onClose: () => print("----- onClose -----"),
      onCancel: () => print('onCancel'),
      onChange: (dateTime, List<int> index) {
        setState(() {
          curdate = dateTime;
        });
      },
      onConfirm: (dateTime, List<int> index) {
        setState(() {
          curdate = dateTime;
        });
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('DateTimePickerPub'),),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              InkWell(
                child: Row(
                  children: <Widget>[
                    Text("${formatDate(curdate,[yyyy,'年',mm,'月',dd, ' ',HH,':',nn])}"),
                    Icon(Icons.arrow_drop_down),
                  ],
                ),
                onTap: _showDatePicker,
              ),
            ],
          )
        ],
      ),
    );
  }
}