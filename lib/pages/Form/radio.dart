import 'package:flutter/material.dart';

class Radios extends StatefulWidget {
  Radios({Key key}) : super(key: key);

  @override
  _RadiosState createState() => _RadiosState();
}

class _RadiosState extends State<Radios> {
  var _radioGroupValue = '';
  var _rowradioGroupValue = '';
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        appBar: AppBar(
          title: Text('单选框'),
        ),
        body: Column(
          children: <Widget>[
            //Radio控件本身没有State状态，当value的值和groupValue值相等时，Radio显示选中状态，效
            Radio(
              value: '1',
              groupValue: _radioGroupValue,
              onChanged: (value) {
                setState(() {
                  _radioGroupValue = value;
                });
              },
            ),
            Row(
              children: <Widget>[
                Radio(
                  value: '语文',
                  groupValue: _rowradioGroupValue,
                  onChanged: (value) {
                    setState(() {
                      _rowradioGroupValue = value;
                    });
                  },
                ),
                Radio(
                  value: '数学',
                  groupValue: _rowradioGroupValue,
                  onChanged: (value) {
                    setState(() {
                      _rowradioGroupValue = value;
                    });
                  },
                ),
                Radio(
                  activeColor: Colors.red, //选中的颜色
                  value: '英语',
                  groupValue: _rowradioGroupValue,
                  onChanged: (value) {
                    setState(() {
                      _rowradioGroupValue = value;
                    });
                  },
                ),
              ],
            ),
            Row(
              children: <Widget>[
                Flexible(
                  child: RadioListTile(
                    title: Text('语文'),
                    value: '语文',
                    groupValue: _radioGroupValue,
                    onChanged: (value) {
                      setState(() {
                        _radioGroupValue = value;
                      });
                    },
                  ),
                ),
                Flexible(
                    child: RadioListTile(
                  title: Text('数学'),
                  value: '数学',
                  groupValue: _radioGroupValue,
                  onChanged: (value) {
                    setState(() {
                      _radioGroupValue = value;
                    });
                  },
                )),
                Flexible(
                    child: RadioListTile(
                  title: Text('英语'),
                  value: '英语',
                  groupValue: _radioGroupValue,
                  onChanged: (value) {
                    setState(() {
                      _radioGroupValue = value;
                    });
                  },
                )),
              ],
            )
          ],
        ),
      ),
    );
  }
}
