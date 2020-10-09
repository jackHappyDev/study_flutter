import 'package:flutter/material.dart';

class CarListDetailVC extends StatelessWidget {
  const CarListDetailVC({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('CarlistDetailVC'),
      ),
      body: Center(
          child: RaisedButton(
              child: Text("back"),
              onPressed: () {
                print('返回上级目录');
                Navigator.pop(context);
              })),
    );
  }
}
