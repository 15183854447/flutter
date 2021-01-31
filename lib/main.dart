import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import './provider/provider.dart';
import './tabs/tabs.dart';
import './routes/routes.dart';

//入口文件
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider.value(
      value: CounterNotifier(),
      child: MaterialApp(
        title: 'Demo', //应用名称
        home: Tabs(),
        theme: ThemeData(
            //主体颜色配置
            // platform: TargetPlatform.iOS,
            ),
        // initialRoute: '', //默认展示的路由
        onGenerateRoute: onGenerateRoute, //命名路由
        debugShowCheckedModeBanner: false, //手机右上脚的debug文件是否展示
      ),
    );
  }
}

// import 'package:flutter/material.dart';
// import 'package:pda_scanner/pda_lifecycle_mixin.dart';

// import 'page_alpha.dart';

// void main() => runApp(MyApp());

// class MyApp extends StatefulWidget {
//   @override
//   _MyAppState createState() => _MyAppState();
// }

// class _MyAppState extends State<MyApp> with PdaLifecycleMixin<MyApp> {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: PageAlpha(),
//     );
//   }
// }
