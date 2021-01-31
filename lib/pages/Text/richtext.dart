import 'package:flutter/material.dart';

class Richtext extends StatelessWidget {
  const Richtext({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        appBar: AppBar(
          title: Text('富文本'),
        ),
        body: Column(
          children: <Widget>[
            RichText(
              text: TextSpan(
                  // style: DefaultTextStyle.of(context).style,
                  children: <InlineSpan>[
                    TextSpan(text: '老孟', style: TextStyle(color: Colors.red)),
                    TextSpan(text: '，', style: TextStyle(color: Colors.black)),
                    TextSpan(
                        text: '一个有态度的程序员',
                        style: TextStyle(color: Colors.black)),
                  ]),
            ),
            RichText(
              text: TextSpan(
                  // style: DefaultTextStyle.of(context).style,
                  children: <InlineSpan>[
                    TextSpan(
                        text: '登陆即视为同意', style: TextStyle(color: Colors.black)),
                    TextSpan(
                      text: '《xxx服务协议》',
                      style: TextStyle(color: Colors.red),
                      // recognizer: TapGestureRecognizer()..onTap = () {},
                    ),
                  ]),
            )
          ],
        ),
      ),
    );
  }
}
