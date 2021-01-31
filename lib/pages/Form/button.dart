import 'package:flutter/material.dart';

class Button extends StatefulWidget {
  Button({Key key}) : super(key: key);

  @override
  _ButtonState createState() => _ButtonState();
}

class _ButtonState extends State<Button> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        appBar: AppBar(
          title: Text('按钮'),
        ),
        body: Column(
          children: <Widget>[
            RaisedButton(
              child: Text('凸起按钮'),
              onPressed: () => {
                //当onPressed不设置或者设置为 null 时为禁用状态
                print('click'),
              },
              onLongPress: () {
                //长按回调。
                print('onLongPress');
              },
              onHighlightChanged: (highlight) {
                //按钮高亮变化回调，当点击或者按住按钮时，按钮出现水波纹效果，水波纹变化时就是高亮状态。
                print('onHighlightChanged:$highlight');
              },
              elevation: 1.0, //阴影设置为 10 和 1 效果还是很明显的，这是正常状态下的阴影，还有高亮阴影
            ),
            FlatButton(
                onPressed: () => {print('click2')},
                color: Colors.blue,
                child: Text('扁平按钮')),
            OutlineButton(
              onPressed: () => {print('带边框的按钮')},
              child: Text('带边框的按钮'),
            ),
            RaisedButton(
              child: Text('RaisedButton'),
              onPressed: () {},
              shape: BeveledRectangleBorder(
                  side: BorderSide(width: 1, color: Colors.red),
                  borderRadius: BorderRadius.circular(10)),
              elevation: 1.0,
            ),
            IconButton(
              icon: Icon(Icons.add),
            )
          ],
        ),
      ),
    );
  }
}
