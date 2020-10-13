import 'package:flutter/material.dart';
import './FrontPageVC.dart';
import './BookCityVC.dart';
import './ListenBook.dart';
import './MineVC.dart';

class TabBarPage extends StatefulWidget {
  TabBarPage({Key key}) : super(key: key);

  @override
  _TabBarPageState createState() => _TabBarPageState();
}

class _TabBarPageState extends State<TabBarPage>
    with SingleTickerProviderStateMixin {
  final List<Widget> tabs = <Widget>[
    Icon(Icons.home),
    Icon(Icons.list),
    Icon(Icons.message),
    Icon(Icons.folder),
  ];

  TabController _tabController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabController = TabController(length: tabs.length, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: TabBarView(
        controller: _tabController,
        children: [
          FrontPage(),
          BookCity(),
          FrontPage(),
          MineVC(),
        ],
      ),
      bottomNavigationBar: Material(
        color: Colors.deepOrange,
        child: TabBar(
          controller: _tabController,
          tabs: [
            Tab(
              text: '首页',
              icon: Icon(Icons.home),
            ),
            Tab(
              text: '列表',
              icon: Icon(Icons.list),
            ),
            Tab(
              text: '信息',
              icon: Icon(Icons.message),
            ),
            Tab(
              text: '我的',
              icon: Icon(Icons.folder),
            ),
          ],
        ),
      ),
    );
  }
}
