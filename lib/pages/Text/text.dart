import 'package:flutter/material.dart';

class Textdsc extends StatelessWidget {
  const Textdsc({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        appBar: AppBar(
          title: Text('文本'),
        ),
        body: Column(
          children: <Widget>[
            Text('张三'),
            Text(
              '张三',
              style: TextStyle(
                  color: Colors.red,
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                  fontStyle: FontStyle.italic),
            ),
            Container(
              height: 200.0,
              width: 200.0,
              color: Colors.blue.withOpacity(.4),
              child: Text(
                '张三',
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(height: 10),
            Container(
              height: 200.0,
              width: 200.0,
              color: Colors.blue.withOpacity(.4),
              child: Text(
                '12312312312hjksajdkashdkjhaskdhkashdkhaskdjhaskhdkajshkdjhask',
                softWrap: true,
              ),
            ),
            SizedBox(height: 10),
            Container(
              height: 200.0,
              width: 200.0,
              color: Colors.blue.withOpacity(.4),
              child: Text(
                '12312312312hjksajdkashdkjhaskdhkashdkhaskdjhaskhdkajshkdjhask',
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
