
import 'package:flutter/material.dart';

import '../pages/search.dart';
import '../pages/Text/text.dart';
import '../pages/Text/richtext.dart';
import '../pages/Text/input.dart';
import '../pages/Text/ensample.dart';

import '../pages/Form/button.dart';
import '../pages/Form/radio.dart';

//配置路由
final routes = {
  '/search': (context) => Search(),
  '/text': (context) => Textdsc(),
  '/rich': (context) => Richtext(),
  '/input': (context) => Input(),
  '/ensample': (context) => Ensample(),
  '/button': (context) => Button(),
  '/radio': (context) => Radios()
};
//固定写法
var onGenerateRoute = (RouteSettings settings) {
  final String name = settings.name;
  final Function pageContentBuilder = routes[name];
  if (pageContentBuilder != null) {
    if (settings.arguments != null) {
      final route = MaterialPageRoute(
          builder: (context) =>
              pageContentBuilder(context, arguments: settings.arguments));
      return route;
    } else {
      final route = MaterialPageRoute(
        builder: (context) => pageContentBuilder(context),
      );
      return route;
    }
  }
};
