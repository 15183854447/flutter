import 'package:flutter/material.dart';

class Search extends StatelessWidget {
  const Search({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
          appBar: AppBar(
            title: Text('搜索'),
          ),
          body: Column(
            children: <Widget>[
              Container(
                width: 100.0,
                height: 50.0,
                color: Colors.red, //
                child: Text(
                  '231223123121231231232312231231212312312323122312312123123123',
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(color: Colors.black),
                ),
              ),
              RaisedButton(
                onPressed: () {
                  Navigator.of(context).pushNamed('/text');
                },
                child: Text('文本'),
              ),
              RaisedButton(
                onPressed: () {
                  Navigator.of(context).pushNamed('/rich');
                },
                child: Text('富文本'),
              ),
              RaisedButton(
                onPressed: () {
                  Navigator.of(context).pushNamed('/input');
                },
                child: Text('输入框组件'),
              ),
              RaisedButton(
                onPressed: () {
                  Navigator.of(context).pushNamed('/ensample');
                },
                child: Text('文本例子'),
              ),
            ],
          )),
    );
  }
}
