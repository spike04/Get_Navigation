import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DashboardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dashboard'),
      ),
      body: Center(
        child: RaisedButton(
          onPressed: () {
            Get.toNamed('/posts', id: 1);
          },
          child: Text('To Post List'),
        ),
      ),
    );
  }
}
