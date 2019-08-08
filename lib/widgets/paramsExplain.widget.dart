
import 'package:flutter/material.dart';

class ParamsExplainWidget extends StatelessWidget {

  const ParamsExplainWidget({
    Key key,
    this.onPressed,
    this.labelText = '',
    this.valueText = '',
  }) : super(key: key);

  final dynamic onPressed;
  final String labelText;
  final String valueText;

  @override
  Widget build(BuildContext context) {
    return new Container(
      decoration: new BoxDecoration(
        color: Colors.white,
        border: new Border(
          bottom: new BorderSide(
            color: Color(0xffdddddd),
            width: 0.5,
          )
        ),
      ),
      padding: const EdgeInsets.only(left: 10.0, top: 16.0, right: 10.0, bottom: 16.0),
      child: new Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          _widgetTitleSection(),
        ],
      ),
    );
  }

  Widget _widgetTitleSection () {
    return new Container(
      child: new Text(
        '参数属性：',
        style: new TextStyle(
          color: Color(0xff333333),
          fontSize: 16.0,
        ),
      ),
    );
  }
}
