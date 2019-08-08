
import 'package:flutter/material.dart';
import 'package:wow_flutter/common/application.dart';
import 'package:wow_flutter/widgets/paramsExplain.widget.dart';
import 'package:wow_flutter/widgets/demoLinkList.widget.dart';


class SliverAppBarDemo extends StatefulWidget {

  const SliverAppBarDemo({
    Key key,
    this.titleText = '',
  }) : super(key: key);

  final String titleText;

  @override
  _SliverAppBarDemoState createState() => _SliverAppBarDemoState();
}

class _SliverAppBarDemoState extends State<SliverAppBarDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Application.config.style.backgroundColor,
      appBar: new AppBar(
        title: new Text(
          widget.titleText,
          style: new TextStyle(
            fontSize: 16.0,
          ),
        ),
      ),
      body: new ListView(
        children: <Widget>[
          new DemoLinkListWidget(),
          new ParamsExplainWidget(),
        ],
      ),
    );
  }
}
