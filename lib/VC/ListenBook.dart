import 'package:flutter/material.dart';

class ListenBook extends StatelessWidget {
  const ListenBook({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('听书'),
      ),
      body: Center(
        child: Text('这个是听书页面'),
      ),
    );
  }
}
