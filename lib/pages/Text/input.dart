import 'package:flutter/material.dart';

class Input extends StatefulWidget {
  Input({Key key}) : super(key: key);

  @override
  _InputState createState() => _InputState();
}

class _InputState extends State<Input> {
  var _textFieldValue = '';

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        appBar: AppBar(
          title: Text('输入框组件'),
        ),
        body: Column(
          children: <Widget>[
            TextField(), //默认输入框
            TextField(
              decoration: InputDecoration(icon: Icon(Icons.person)),
            ),
            TextField(
              decoration: InputDecoration(
                  labelText: '账户',
                  labelStyle: TextStyle(color: Colors.red),
                  hintText: '请输入账户名',
                  helperText: '用户名的长度为6-12个字符',
                  helperStyle: TextStyle(color: Colors.blue),
                  helperMaxLines: 1),
            ),
            TextField(
              decoration: InputDecoration(
                errorText: '用户名输入错误',
                errorStyle: TextStyle(fontSize: 12),
                errorMaxLines: 1,
                errorBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.red)),
              ),
            ),
            TextField(
              decoration: InputDecoration(prefixIcon: Icon(Icons.person)),
            ),
            TextField(
              onChanged: (value) {
                setState(() {
                  _textFieldValue = value;
                });
              },
              decoration:
                  InputDecoration(counterText: '${_textFieldValue.length}/32'),
            ),
            Container(
              height: 60,
              width: 250,
              child: TextField(
                onChanged: (value) => {print(value)},
                decoration: InputDecoration(
                  fillColor: Color(0x30cccccc),
                  filled: true,
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Color(0x00FF0000)),
                      borderRadius: BorderRadius.all(Radius.circular(100))),
                  hintText: 'QQ号/手机号/邮箱',
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Color(0x00000000)),
                      borderRadius: BorderRadius.all(Radius.circular(100))),
                ),
              ),
            ),
            TextField(
              toolbarOptions: ToolbarOptions(
                  copy: true, cut: true, paste: true, selectAll: true),
            )
          ],
        ),
      ),
    );
  }
}
