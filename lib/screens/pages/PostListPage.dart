import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PostListPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('PostList'),
      ),
      body: ListView.separated(
        separatorBuilder: (BuildContext context, int index) => Divider(),
        itemCount: 20,
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            onTap: () {
              Get.toNamed('/posts/details',
                  id: 1, arguments: 'Post Title ${index + 1}');
            },
            title: Text('Post Title ${index + 1}'),
            subtitle: Text('Post Subtitle ${index + 1}'),
          );
        },
      ),
    );
  }
}
