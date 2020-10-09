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
                showAlertView(context);
              })),
    );
  }
}

void showAlertView(context) {
  showDialog<Null>(
    context: context,
    barrierDismissible: false,
    builder: (BuildContext context) {
      return new AlertDialog(
        title: new Text('标题'),
        content: new SingleChildScrollView(
          child: new ListBody(
            children: <Widget>[
              new Text('内容 1'),
              new Text('内容 2'),
            ],
          ),
        ),
        actions: <Widget>[
          new FlatButton(
            child: new Text('确定'),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
        ],
      );
    },
  ).then((val) {
    print(val);
  });
}

// //模态视图样式
// class ShowAlertDialog {

// }
