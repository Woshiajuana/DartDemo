
import 'package:flutter/material.dart';
import 'package:wow_flutter/common/application.dart';
import 'package:wow_flutter/widgets/cellLink.dart';

class HomeView extends StatefulWidget {
  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Application.config.style.backgroundColor,
      body: new ListView(
        children: <Widget>[
          _widgetHeaderSection(),
          new CellLink(
            labelText: 'GetHub',
          ),
          new CellLink(
            labelText: '关于我们',
            onPressed: () => Application.router.push(context, 'about'),
          ),
          new CellLink(
            labelText: '更新记录',
          ),
        ],
      ),
    );
  }

  Widget _widgetHeaderSection () {
    return new Container(
      margin: const EdgeInsets.only(top: 100.0, bottom: 50.0),
      child: new Column(
        children: <Widget>[
          new Icon(
            Icons.face,
            size: 100,
            color: Application.config.style.mainColor,
          ),
          new Text(
            'WowFlutter v0.0.1',
            style: new TextStyle(
              color: Application.config.style.mainColor,
              fontSize: 18.0,
            ),
          ),
        ],
      ),
    );
  }

}
