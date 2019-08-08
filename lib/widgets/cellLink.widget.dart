
import 'package:flutter/material.dart';

class CellLinkWidget extends StatelessWidget {

  const CellLinkWidget({
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
            onPressed == null ? new Container() : new Icon(Icons.arrow_forward_ios, size: 16.0, color: Color(0xff666666),),
          ],
        ),
      ),
    );
  }
}
