
import 'package:flutter/material.dart';

class HomeView extends StatefulWidget {
  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.red,
      child: new Stack(
        children: <Widget>[
          _widgetMainSection(),
//          _widgetSearchSection(),
        ],
      ),
    );
  }

  Widget _widgetMainSection () {
    return new ListView(
      children: <Widget>[
        new Container(
          color: Colors.blue,
          height: 500.0,
          margin: const EdgeInsets.only(bottom: 10.0),
        ),
        new Container(
          color: Colors.blue,
          height: 500.0,
          margin: const EdgeInsets.only(bottom: 10.0),
        ),
      ],
    );
  }

  Widget _widgetSearchSection () {
    double numRadius = MediaQuery.of(context).size.width / 2;
    return new Positioned(
      bottom: 0,
      left: 0,
      right: 0,
      child: new Container(
        height: numRadius,
        decoration: new BoxDecoration(
          color: Colors.white,
          borderRadius: new BorderRadius.only(
            topLeft: new Radius.circular(numRadius),
            topRight: new Radius.circular(numRadius),
          ),
        ),
      ),
    );
  }

}
