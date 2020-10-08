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
