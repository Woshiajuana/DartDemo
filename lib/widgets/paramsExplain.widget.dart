
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
      margin: const EdgeInsets.only(),
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
          _widgetParamsSection(),
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

  Widget _widgetParamsSection () {
    return new Container(
      margin: const EdgeInsets.only(top: 10.0),
      padding: const EdgeInsets.all(10.0),
      decoration: new BoxDecoration(
        color: Color(0xff333333),
        borderRadius: new BorderRadius.circular(6.0),
      ),
      child: new Row(
        children: <Widget>[
          new Text(
            'const SliverAppBar({\n' +
                '\r\r\r\rKey key,\n' +
                '\r\r\r\rthis.leading,\n' +
                '\r\r\r\rthis.automaticallyImplyLeading = true,\n' +
                '\r\r\r\rthis.title,\n' +
                '\r\r\r\rthis.actions,\n' +
                '\r\r\r\rthis.flexibleSpace, // 通过这个来设置背景\n' +
                '\r\r\r\rthis.bottom,\n' +
                '\r\r\r\rthis.elevation,\n' +
                '\r\r\r\rthis.forceElevated = false, // 是否显示层次感\n' +
                '\r\r\r\rthis.backgroundColor,\n' +
                '\r\r\r\rthis.brightness,\n' +
                '\r\r\r\rthis.iconTheme,\n' +
                '\r\r\r\rthis.textTheme,\n' +
                '\r\r\r\rthis.primary = true,\n' +
                '\r\r\r\rthis.centerTitle,\n' +
                '\r\r\r\rthis.titleSpacing = NavigationToolbar.kMiddleSpacing,\n' +
                '\r\r\r\rthis.expandedHeight, // 展开的高度\n' +
                '\r\r\r\r// 以下三个等例子再讲\n' +
                '\r\r\r\rthis.floating = false,\n' +
                '\r\r\r\rthis.pinned = false,\n' +
                '\r\r\r\rthis.snap = false,\n' +
                '}),',
            style: new TextStyle(
              color: Colors.white,
              fontSize: 12.0,
            ),
          ),
        ],
      ),
    );
  }
}
