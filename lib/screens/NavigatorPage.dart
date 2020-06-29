import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'pages/PostDetailPage.dart';
import 'pages/PostListPage.dart';
import 'tabs/DashboardPage.dart';

class NavigatorPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Navigator(
      key: Get.nestedKey(1),
      initialRoute: '/',
      onGenerateRoute: (RouteSettings settings) {
        print(settings.name);
        if (settings.name == '/') {
          return GetPageRoute(
            page: () => DashboardPage(),
            settings: settings,
          );
        } else if (settings.name == '/posts') {
          return GetPageRoute(
            page: () => PostListPage(),
            settings: settings,
            transition: Transition.rightToLeft,
          );
        } else if (settings.name == '/posts/details') {
          return GetPageRoute(
            page: () => PostDetailPage(title: settings.arguments),
            settings: settings,
            transition: Transition.rightToLeft,
          );
        } else {
          return GetPageRoute(
            page: () => Scaffold(
              body: Container(),
            ),
            settings: settings,
          );
        }
      },
    );
  }
}
