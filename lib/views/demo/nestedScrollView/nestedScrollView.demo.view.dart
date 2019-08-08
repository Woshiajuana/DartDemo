
import 'package:flutter/material.dart';
import 'package:wow_flutter/common/application.dart';

class NestedScrollViewDemo extends StatefulWidget {

  const NestedScrollViewDemo({
    Key key,
    this.titleText = '',
  }) : super(key: key);

  final String titleText;

  @override
  _NestedScrollViewDemoState createState() => _NestedScrollViewDemoState();
}

class _NestedScrollViewDemoState extends State<NestedScrollViewDemo> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: Application.config.style.backgroundColor,
      appBar: new AppBar(
        title: new Text(
          widget.titleText,
          style: new TextStyle(
            fontSize: 16.0,
          ),
        ),
      ),
//      body: new NestedScrollView(
////        headerSliverBuilder: () {},
//        body: new ListView(
//          children: <Widget>[
//            new Container(height: 300.0, width: MediaQuery.of(context).size.width, color: Colors.blue),
//          ],
//        ),
//      ),
    );
  }
}
