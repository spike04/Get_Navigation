import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../utils/CommonBottomNavigationBar.dart';
import 'NavigatorPage.dart';
import 'tabs/SettingsPage.dart';

class InitialPage extends StatefulWidget {
  @override
  _InitialPageState createState() => _InitialPageState();
}

class _InitialPageState extends State<InitialPage> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        final isFirstRouteInCurrentTab = await Get.key.currentState.maybePop();
        print(isFirstRouteInCurrentTab);

        return isFirstRouteInCurrentTab;
      },
      child: Scaffold(
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _selectedIndex,
          onTap: (index) => setState(() => _selectedIndex = index),
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.dashboard),
              title: Text('DASHBOARD'),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.settings),
              title: Text('SETTINGS'),
            ),
          ],
        ),
        body: CommonBottomNavigationBar(
          selectedIndex: _selectedIndex,
          childrens: <Widget>[
            NavigatorPage(),
            SettingsPage(),
          ],
        ),
      ),
    );
  }
}
