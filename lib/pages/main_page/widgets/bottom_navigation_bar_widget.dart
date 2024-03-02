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
      
        currentIndex: controller.current_index,
        onTap: controller.changeIndex,
        
        items:  [
          const BottomNavigationBarItem(icon: Icon(Icons.search), label: 'さがす'),
          BottomNavigationBarItem(icon: SvgPicture.asset(
            'assets/images/Vector.svg', 
            width: 24, 
            height: 24,
            
          ), label: 'search'),
          //  BottomNavigationBarItem(icon: Icon(Icons.search), label: 'search')
        ]);
  }
}
