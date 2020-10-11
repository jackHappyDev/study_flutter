import 'package:flutter/material.dart';

class ListViewfull extends StatefulWidget {
  List list = new List();
  ListViewfull({Key key}) : super(key: key) {
    for (var i = 0; i < 20; i++) {
      list.add("这是第${i}条数据");
    }
    print(list);
  }

  @override
  _ListViewState createState() => _ListViewState();
}

class _ListViewState extends State<ListViewfull> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ListViewShow'),
      ),
      body: ListView.builder(
        itemCount: 5,
        itemBuilder: (context, index) {
          // print(context);
          return ListTile(
            leading: Icon(Icons.phone),
            title: Text("1"),
          );
        },
      ),
    );
  }
}
