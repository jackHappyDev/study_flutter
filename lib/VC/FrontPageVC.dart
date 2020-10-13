import 'package:flutter/material.dart';

class FrontPage extends StatelessWidget {
  const FrontPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('首页'),
      ),
      body: Center(
        child: Text('这个是首页'),
      ),
    );
  }
}
