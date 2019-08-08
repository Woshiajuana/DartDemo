
import 'package:flutter/material.dart';

class CellLinkWidget extends StatefulWidget {

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
  _CellLinkWidgetState createState() => _CellLinkWidgetState();
}

class _CellLinkWidgetState extends State<CellLinkWidget> {
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
        onPressed: widget.onPressed,
        child: new Row(
          children: <Widget>[
            new Text(
              widget.labelText,
              style: new TextStyle(
                color: Color(0xff666666),
                fontSize: 16.0,
              ),
            ),
            new Expanded(child: new Container(), flex: 1),
            new Text(
              widget.valueText,
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
