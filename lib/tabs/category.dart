import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class Category extends StatelessWidget {
  const Category({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: <Widget>[
          RaisedButton(
            child: Text('顶部'),
            onPressed: () {
              Fluttertoast.showToast(
                  msg: "你今天真好看", //设置toast展示的字符串
                  toastLength: Toast.LENGTH_SHORT,
                  gravity: ToastGravity.TOP, //设置toast的展示位置.(Web端仅支持顶部和底部)
                  timeInSecForIosWeb: 1, //ios秒数
                  backgroundColor: Colors.black45, //toast背景色
                  textColor: Colors.white, //toast文字颜色
                  fontSize: 16.0); //toast文字字体大小
              print('顶部弹框');
            },
          ),
          SizedBox(
            width: 20.0,
          ),
          RaisedButton(
            child: Text('中间弹框'),
            onPressed: () {
              Fluttertoast.showToast(
                  msg: "你今天真好看", //设置toast展示的字符串
                  toastLength: Toast.LENGTH_SHORT,
                  gravity: ToastGravity.CENTER, //设置toast的展示位置.(Web端仅支持顶部和底部)
                  timeInSecForIosWeb: 1, //ios秒数
                  backgroundColor: Colors.black45, //toast背景色
                  textColor: Colors.white, //toast文字颜色
                  fontSize: 16.0); //toast文字字体大小
              print('中间弹框');
            },
          ),
          SizedBox(
            width: 20.0,
          ),
          RaisedButton(
            child: Text('底部弹框'),
            onPressed: () {
              Fluttertoast.showToast(
                  msg: "你今天真好看", //设置toast展示的字符串
                  toastLength: Toast.LENGTH_SHORT,
                  gravity: ToastGravity.BOTTOM, //设置toast的展示位置.(Web端仅支持顶部和底部)
                  timeInSecForIosWeb: 1, //ios秒数
                  backgroundColor: Colors.black45, //toast背景色
                  textColor: Colors.white, //toast文字颜色
                  fontSize: 16.0); //toast文字字体大小
              print('底部弹框');
            },
          ),
        ],
      ),
    );
  }
}
