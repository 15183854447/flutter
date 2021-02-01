import 'package:flutter/material.dart';

class CheckBox extends StatefulWidget {
  CheckBox({Key key}) : super(key: key);

  @override
  _CheckBoxState createState() => _CheckBoxState();
}

class _CheckBoxState extends State<CheckBox> {
  var _checkValue = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        appBar: AppBar(
          title: Text('复选框'),
        ),
        body: Column(
          children: <Widget>[
            Checkbox(
              value: _checkValue, //value值为bool类型，true表示选择状态。
              //activeColor为激活状态下颜色，是矩形区域内的颜色，checkColor是选中后“对勾”的颜色，用
              activeColor: Colors.yellow,
              checkColor: Colors.red,
              onChanged: (value) => {
                //onChanged为发生变化时回调，即点击控件时回调，方法内的参数为新的值。
                setState(() {
                  _checkValue = value;
                })
              },
            ),
            Container(
              width: 200.0,
              child: CheckboxListTile(
                controlAffinity: ListTileControlAffinity
                    .leading, //leading：勾选框在开头位置。trailing：勾选框在结尾位置，platform：根据平台确定
                secondary: Icon(Icons.person),
                //secondary一般放置一个图标，位于勾选框的另一边。效果如下：
                //CheckboxListTile默认是充满父组件的，因此需要Container限制其宽度，效果如下
                title: Text('同意'),
                subtitle: Text('说明'),
                value: _checkValue,
                onChanged: (value) => {
                  setState(() {
                    _checkValue = value;
                  })
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
