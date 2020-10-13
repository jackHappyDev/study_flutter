import 'package:flutter/material.dart';

class BookCity extends StatelessWidget {
  const BookCity({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('书城'),
      ),
      body: Center(
        child: Text('这个是书城页面'),
      ),
    );
  }
}
