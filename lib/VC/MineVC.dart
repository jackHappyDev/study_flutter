import 'package:flutter/material.dart';

class MineVC extends StatelessWidget {
  const MineVC({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('我的'),
      ),
      body: Center(
        child: Text('这个是我的页面'),
      ),
    );
  }
}
