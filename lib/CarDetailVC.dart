import 'package:flutter/material.dart';
import 'package:http/http.dart' as http; //导入前需要配置

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
                // showAlertView(context, '你好啊', '这里是测试内容');
                loadData_http_get('https://www.baidu.com');
              })),
    );
  }
}

//弹框
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

//网络请求 GET

void loadData_http_get(Url) async {
  print('------loadData_http_get--------');

  var client = http.Client();

  var uri = Uri.parse(Url);

  http.Response response = await client.get(uri);

  if (response.statusCode == 200) {
    print(response.body);
  } else {
    print('请求失败 code 码为${response.statusCode}');
  }
}

//网络请求POST
void loadData_http_post_convenience(Url) async {
  print('------ loadData_http_post --------');

  var headers = Map<String, String>();
  headers["loginSource"] = "IOS";
  headers["useVersion"] = "3.1.0";
  headers["isEncoded"] = "1";
  headers["bundleId"] = "com.nongfadai.iospro";
  headers["loginSource"] = "IOS";
  headers["Content\-Type"] = "application/json";

  Map params = {'currentPage': '1'};
  // 嵌套两层都可以，但是具体哪个好还有待确认？？？？
  // var jsonParams = utf8.encode(json.encode(params));
  // var jsonParams = json.encode(params);

  var httpClient = http.Client();

  var url = Url;

  httpClient.post(url, body: params, headers: headers).then((response) {
    print("Response status: ${response.statusCode}");
    print("Response body: ${response.body}");
  }).whenComplete(httpClient.close);
}
