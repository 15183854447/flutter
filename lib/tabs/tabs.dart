import 'package:flutter/material.dart';

import './home.dart'; //首页
import './category.dart'; //分类页面
import './setting.dart'; //设置页面

class Tabs extends StatefulWidget {
  Tabs({Key key}) : super(key: key);

  @override
  _TabsState createState() => _TabsState();
}

class _TabsState extends State<Tabs> {
  int _currentIndex = 0; //tabbar 选中的索引
  List Routes = [Home(), Category(), Setting()]; //渲染页面  便于跟tabbar 对应
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //页面主体
      appBar: AppBar(
        title: Text('测试'),
      ),
      body: this.Routes[this._currentIndex], //内容区域
      // backgroundColor: Colors.yellow, //背景颜色
      bottomNavigationBar: BottomNavigationBar(
        //tabbar 栏目
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), title: Text('首页')),
          BottomNavigationBarItem(
              icon: Icon(Icons.category), title: Text('分类')),
          BottomNavigationBarItem(icon: Icon(Icons.settings), title: Text('设置'))
        ],
        currentIndex: this._currentIndex, //tabbar 选中的索引
        onTap: (int currentIndex) {
          //tabbar 选中事件
          // 改变currentIndex的值
          setState(() {
            this._currentIndex = currentIndex;
          });
        },
      ),
      //悬浮按钮
      floatingActionButton: FloatingActionButton(
        //圆形按钮
        child: Text('文件'), //按钮文字
        tooltip: 'Increment Counter', //提示文字  长按生效
        onPressed: () {
          print('湿答答');
        }, //按钮事件
      ),
    );
  }
}
