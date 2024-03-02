import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:machine_test_project/controller/navbar_controller.dart';
import 'package:machine_test_project/pages/chat_screen/chat_screen.dart';
import 'package:machine_test_project/pages/main_page/widgets/bottom_navigation_bar_widget.dart';
import 'package:machine_test_project/pages/profile/screen_profile.dart';
import 'package:machine_test_project/pages/screen_job/screen_job.dart';
import 'package:machine_test_project/pages/screen_search/screen_search.dart';
import 'package:machine_test_project/pages/screen_stamp/screen_stamp.dart';
import 'package:machine_test_project/routes/route.dart';

class ScreenMainPage extends StatelessWidget {
 ScreenMainPage({ super.key });



  @override
  Widget build(BuildContext context){
    final controller = Get.put(NavBarController());
    return GetBuilder<NavBarController>(
      builder: (context) {
        return  Scaffold(
          body: IndexedStack(
          index: controller.current_index,
            children: const[
              ScreenSearch(),
              ScreenJob(),
               ChatScreen(),
               ScreenProfile(),

              // controller.current_index == 2? const ScreenStamp() : const SizedBox.shrink()
            ],
          ),
          floatingActionButton: FloatingActionButton(
            onPressed: (){
            print(AppPageRoute.stampScreen);
            Get.toNamed(AppPageRoute.stampScreen);
            
          }, 
          child: Icon(Icons.add),
          shape: const CircleBorder(eccentricity: 1),
          
          ),
          floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
          
          bottomNavigationBar: 
           Container(
            height: 90,
            child: BottomNavigationBarWidget(controller: controller,))
         
          
        );
      }
    );
  }

  
}