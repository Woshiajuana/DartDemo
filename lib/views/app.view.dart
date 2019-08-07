
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'package:wow_flutter/views/home/home.view.dart';
import 'package:wow_flutter/views/about/about.view.dart';
import 'package:wow_flutter/views/demo/demo.view.dart';
import 'package:wow_flutter/views/util/util.view.dart';
import 'package:wow_flutter/common/application.dart';

class AppView extends StatefulWidget {

  @override
  _AppViewState createState() => new _AppViewState();
}

class _AppViewState extends State<AppView> with SingleTickerProviderStateMixin {

  // Tab页面
  List _arrTab = [
    {
      'text': '首页',
      'icon': Icons.home,
    },
    {
      'text': '组件',
      'icon': Icons.extension,
    },
    {
      'text': '工具',
      'icon': Icons.build,
    },
    {
      'text': '关于',
      'icon': Icons.face,
    },
  ];
  // Tab页的控制器，可以用来定义Tab标签和内容页的坐标
  TabController _tabController;
  PageController _pageController;

  @override
  void initState() {
    super.initState();
    _tabController = new TabController(
      length: _arrTab.length, // Tab页的个数
      vsync: this, // 动画效果的异步处理，默认格式
    );
    _pageController = new PageController(
      initialPage: 0,
    );
    Application.context = context;
  }

  // 组件即将销毁时调用
  @override
  void dispose() {
    // 释放内存，节省开销
    _tabController.dispose();
    _pageController.dispose();
    super.dispose();
  }

  // 生命周期方法构建Widget时调用
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new PageView(
        controller: _pageController,
        physics: new NeverScrollableScrollPhysics(),
        children: <Widget>[
          new HomeView(),
          new DemoView(),
          new UtilView(),
          new AboutView(),
        ],
      ),
      bottomNavigationBar: new Material(
        color: Colors.white,
        elevation: 0.0,
        child: _widgetTabBar(),
      ),
    );
  }

  Widget _widgetTabBar () {
    List<Widget> tabs = _arrTab.map((item) {
      return new Tab(
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            new Icon(item['icon'], size: 24.0,),
            new Text(item['text'], style: new TextStyle(fontSize: 10.0,),)
          ],
        ),
      );
    }).toList();
    return new TabBar(
      indicatorColor: Colors.white,
      controller: _tabController,
      tabs: tabs,
      labelColor: Color(0xff1296db),
      unselectedLabelColor: Color(0xff999999),
      onTap: (index) {
        _pageController.jumpToPage(index);
      },
    );
  }

  static Future<void> pop() async {
    await SystemChannels.platform.invokeMethod('SystemNavigator.pop');
  }

}