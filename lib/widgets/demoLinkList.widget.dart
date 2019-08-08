
import 'package:flutter/material.dart';
import 'package:wow_flutter/widgets/cellLink.widget.dart';

class DemoLinkListWidget extends StatelessWidget {

  const DemoLinkListWidget({
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
      padding: const EdgeInsets.all(10.0),
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
        '案例列表：',
        style: new TextStyle(
          color: Color(0xff333333),
          fontSize: 16.0,
        ),
      ),
    );
  }

}
