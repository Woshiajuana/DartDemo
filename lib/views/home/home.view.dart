
import 'package:flutter/material.dart';
import 'package:wow_flutter/common/application.dart';

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
          _widgetCellItem(
            labelText: 'GetHub',
          ),
          _widgetCellItem(
            labelText: '关于我们',
            onPressed: () => Application.router.push(context, 'about'),
          ),
          _widgetCellItem(
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

  Widget _widgetCellItem ({
    String labelText = '',
    String valueText = '',
    dynamic onPressed,
  }) {
    return new Container(
      height: 50.0,
      decoration: new BoxDecoration(
        color: Colors.white,
        border: new Border(
          top: new BorderSide(
            color: Color(0xffdddddd),
            width: 0.5,
          ),
          bottom: new BorderSide(
            color: Color(0xffdddddd),
            width: 0.5,
          ),
        )
      ),
      child: new FlatButton(
        onPressed: onPressed,
        child: new Row(
          children: <Widget>[
            new Text(
              labelText,
              style: new TextStyle(
                color: Color(0xff666666),
                fontSize: 16.0,
              ),
            ),
            new Expanded(child: new Container(), flex: 1),
            new Text(
              valueText,
              style: new TextStyle(
                color: Color(0xff666666),
                fontSize: 16.0,
              ),
            ),
            new Icon(Icons.arrow_forward_ios, size: 16.0, color: Color(0xff666666),),
          ],
        ),
      ),
    );
  }

}
