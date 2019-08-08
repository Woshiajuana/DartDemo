
import 'package:flutter/material.dart';
import 'package:wow_flutter/widgets/cellLink.widget.dart';

class DemoLinkListWidget extends StatelessWidget {

  const DemoLinkListWidget({
    Key key,
    this.demoLinkList,
  }) : super(key: key);

  final List demoLinkList;

  @override
  Widget build(BuildContext context) {
    return new Container(
      margin: const EdgeInsets.only(top: 10.0),
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
        ),
      ),
//      padding: const EdgeInsets.all(10.0),
      child: new Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: _widgetDemoListSection(),
      ),
    );
  }

  List<Widget> _widgetDemoListSection () {
    List<Widget> list = [_widgetTitleSection()];
    list.addAll(demoLinkList.map((item) {
      return new CellLinkWidget(
        labelText: item['labelText'],
        valueText: item['valueText'],
        onPressed: () => {},
      );
    }).toList());
    return list;
  }

  Widget _widgetTitleSection () {
    return new Container(
      padding: const EdgeInsets.only(top: 10.0, bottom: 10.0, left: 10.0),
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
