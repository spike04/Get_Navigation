import 'package:flutter/material.dart';

class PostDetailPage extends StatelessWidget {
  final String title;

  const PostDetailPage({
    Key key,
    this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('$title'),
      ),
      body: Center(
        child: Text('Post Detail Page'),
      ),
    );
  }
}
