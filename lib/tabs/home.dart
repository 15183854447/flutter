import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../provider/provider.dart';
import '../request/request.dart';

class Home extends StatelessWidget {
  const Home({Key key}) : super(key: key);

  getList(page) async {
    Map result = await HttpUtils.request('/index/getGoodsList/:page',
        method: HttpUtils.GET,
        data: {
          'page': page,
        });

    print(result);
  }

  @override
  Widget build(BuildContext context) {
    // 获取 CounterNotifier 数据 （最简单的方式）
    final counter = Provider.of<CounterNotifier>(context);
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        RaisedButton(
          onPressed: () {
            Navigator.of(context).pushNamed('/search');
          },
          child: Text('按钮'),
        ),
        RaisedButton(
          onPressed: () {
            // 更改全局状态的值
            print(this.getList(counter.count));
            counter.increment(12312);
          },
          child: Text('按钮2'),
        ),
        Text('${counter.count}'),
        Text('Device widthdp'),
      ],
    );
  }
}
