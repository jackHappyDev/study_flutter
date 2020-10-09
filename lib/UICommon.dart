import 'package:flutter/material.dart';

//container
class UIcontainer extends StatelessWidget {
  const UIcontainer({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return new Center(
      child: Container(
        margin: const EdgeInsets.all(18.0),
        color: Colors.blue[500],
        width: 50.0,
        height: 50.0,
      ),
    );
  }
}

//row
class UIRow extends StatelessWidget {
  const UIRow({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
            child: new Text(
          'first',
          textDirection: TextDirection.ltr,
          textAlign: TextAlign.center,
        )),
        Expanded(
            child: new Text(
          'second',
          textDirection: TextDirection.ltr,
        )),
        Expanded(
            child: new Text(
          'third',
          textDirection: TextDirection.ltr,
        )),
      ],
    );
  }
}

//Colum
class UIColumn extends StatelessWidget {
  const UIColumn({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text('this is the first line'),
        SizedBox(
          height: 10,
        ),
        Text('this is the second line'),
        SizedBox(
          height: 10,
        ),
        Expanded(
            child: FittedBox(
          fit: BoxFit.contain,
          child: const FlutterLogo(),
        )),
      ],
    );
  }
}

//netWorkImg
class UInetImg extends StatelessWidget {
  const UInetImg({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: const Image(
          image: NetworkImage(
              'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg')),
    );
  }
}

//text
class UItext extends StatelessWidget {
  const UItext({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: new Text(
        'u are great',
        textAlign: TextAlign.center,
        overflow: TextOverflow.clip,
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
    );
  }
}

//icon
class UIIcon extends StatelessWidget {
  const UIIcon({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Icon(
          Icons.favorite,
          color: Colors.pink,
          size: 24.0,
          semanticLabel: 'first one',
        ),
        Icon(
          Icons.audiotrack,
          color: Colors.yellow,
          size: 24.0,
          semanticLabel: 'second one',
        ),
        Icon(
          Icons.beach_access,
          color: Colors.blue,
          size: 24.0,
          semanticLabel: 'third one',
        ),
      ],
    );
  }
}

//button
class UIButton extends StatelessWidget {
  const UIButton({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const RaisedButton(
              onPressed: null, child: Text('this is the First one')),
          const RaisedButton(
              onPressed: null,
              textColor: Colors.white,
              child: Text(
                'ENABLE BUTTON',
                style: TextStyle(fontSize: 30.0),
              )),
          const RaisedButton(
              onPressed: null, child: Text('this is the third one')),
        ],
      ),
    );
  }
}

//Scaffold
class UIScaffoldfull extends StatefulWidget {
  UIScaffoldfull({Key key, this.title}) : super(key: key);

  final String title;

  @override
  UIScaffoldless createState() => UIScaffoldless();
}

class UIScaffoldless extends State<UIScaffoldfull> {
  int _count = 1;
  void _incrementCounter() {
    setState(() {
      _count++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text('$_count'),
      // ),
      body: SafeArea(
          child: Center(
        child: Text('You have pressed the button $_count times.'),
      )),
      bottomNavigationBar: BottomAppBar(
        shape: const CircularNotchedRectangle(),
        child: Container(
          height: 50.0,
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: '自增操作',
        child: Icon(Icons.add),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}

//APPBar  直接return 的时候是 new AppBar  平常使用的时候是键值对 appBar:AppBar
class UIAppBar extends StatelessWidget {
  const UIAppBar({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return new AppBar(
      actions: [
        IconButton(icon: Icon(Icons.mail), onPressed: null),
      ],
      title: Text(
        'video demo ',
        textAlign: TextAlign.right,
      ),
      // actions: [
      //   IconButton(icon: Icon(Icons.mail), onPressed: null),
      //   SizedBox(
      //     width: 10,
      //   ),
      //   IconButton(icon: Icon(Icons.menu), onPressed: null),
      // ],
    );
  }
}
