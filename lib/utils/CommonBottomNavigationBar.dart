import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CommonBottomNavigationBar extends StatefulWidget {
  final int selectedIndex;
  final List<Widget> childrens;

  CommonBottomNavigationBar({
    @required this.selectedIndex,
    @required this.childrens,
  });

  @override
  _CommonBottomNavigationBarState createState() =>
      _CommonBottomNavigationBarState();
}

class _CommonBottomNavigationBarState extends State<CommonBottomNavigationBar> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: List.generate(
        widget.childrens.length,
        (index) {
          return _buildOffstageNavigator(index);
        },
      ),
    );
  }

  Widget _buildOffstageNavigator(int index) {
    return Offstage(
      offstage: widget.selectedIndex != index,
      child: widget.childrens[index],
    );
  }
}
