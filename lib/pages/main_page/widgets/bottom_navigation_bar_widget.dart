import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:machine_test_project/controller/navbar_controller.dart';

class BottomNavigationBarWidget extends StatelessWidget {
   BottomNavigationBarWidget({
    super.key,
    required this.controller,
  });

  final NavBarController controller;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      selectedItemColor: Colors.orange[300],
      unselectedItemColor: Colors.black,
        currentIndex: controller.current_index,
        onTap: controller.changeIndex,
        
        items: const [
           BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.search,
            size: 30,), label: 'さがす'),
          BottomNavigationBarItem(icon: Icon(Icons.work_outline_outlined), label: 'search'),
           BottomNavigationBarItem(icon: Icon(Icons.search), label: 'search'),
           BottomNavigationBarItem(icon: Icon(Icons.search), label: 'search'),
        ],
        elevation: 0,);
  }
}
