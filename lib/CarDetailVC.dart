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
                showAlertView(context, '你好啊', '这里是测试内容');
              })),
    );
  }
}

void showAlertView(context, title, content) {
  showDialog<Null>(
    context: context,
    barrierDismissible: false,
    builder: (BuildContext context) {
      return new AlertDialog(
        title: new Text(title),
        content: new SingleChildScrollView(
          child: new ListBody(
            children: <Widget>[
              new Text(title),
              new Text(content),
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
