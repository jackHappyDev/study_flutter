import 'package:flutter/material.dart';

// 购物车页面
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
                // Navigator.pop(context);
                // ShowAlertView();
              })),
    );
  }
}

//模态视图样式
class ShowAlertView extends StatelessWidget {
  const ShowAlertView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: EdgeInsets.all(12.0),
        child: Text(
          '这个是模态视图',
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Theme.of(context).accentColor,
            fontSize: 24.0,
          ),
        ),
      ),
    );
  }
}
