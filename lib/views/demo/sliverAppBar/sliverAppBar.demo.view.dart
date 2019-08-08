
import 'package:flutter/material.dart';
import 'package:wow_flutter/common/application.dart';

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
    return Container();
  }
}
