
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'package:wow_flutter/views/home/home.view.dart';
import 'package:wow_flutter/views/about/about.view.dart';
import 'package:wow_flutter/views/demo/demo.view.dart';
import 'package:wow_flutter/views/util/util.view.dart';
import 'package:wow_flutter/common/application.dart';

class AppPage extends StatefulWidget {

  @override
  _AppPageState createState() => new _AppPageState();
}

class _AppPageState extends State<AppPage> with SingleTickerProviderStateMixin {

  // Tab页的控制器，可以用来定义Tab标签和内容页的坐标
  TabController _tabController;
  PageController _pageController;

  @override
  void initState() {
    super.initState();
    _tabController = new TabController(
      length: 4, // Tab页的个数
      vsync: this, // 动画效果的异步处理，默认格式
    );
    _pageController = new PageController(
      initialPage: 0,
    );
    Application.context = context;
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
        child: new TabBar(
          indicatorColor: Colors.white,
          controller: _tabController,
          tabs: <Tab>[
            new Tab(
              child: new Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  new Text('首页', style: TextStyle(fontSize: 10)),
                ],
              ),
            ),
            new Tab(
              child: new Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  new Text('示例', style: TextStyle(fontSize: 10)),
                ],
              ),
            ),
            new Tab(
              child: new Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  new Text('工具', style: TextStyle(fontSize: 10)),
                ],
              ),
            ),
            new Tab(
              child: new Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  new Text('关于', style: TextStyle(fontSize: 10)),
                ],
              ),
            ),
          ],
          labelColor: Color(0xff1296db),
          unselectedLabelColor: Color(0xff999999),
          onTap: (index) {
            _pageController.jumpToPage(index);
          },
        ),
      ),
    );
  }

  // 组件即将销毁时调用
  @override
  void dispose() {
    // 释放内存，节省开销
    _tabController.dispose();
    _pageController.dispose();
    super.dispose();
  }

  static Future<void> pop() async {
    await SystemChannels.platform.invokeMethod('SystemNavigator.pop');
  }

}