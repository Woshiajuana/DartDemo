
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
          _widgetSearchSection(),
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
    return new Positioned(
      bottom: 0,
      left: 0,
      right: 0,
      child: new Container(
        height: 100.0,
        color: Colors.amber,
      ),
    );
  }
}
