import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:machine_test_project/controller/navbar_controller.dart';
import 'package:machine_test_project/pages/chat_screen/chat_screen.dart';
import 'package:machine_test_project/pages/main_page/widgets/bottom_navigation_bar_widget.dart';
import 'package:machine_test_project/pages/profile/screen_profile.dart';
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
            children: [
              const ChatScreen(),
              const ScreenProfile(),
              controller.current_index == 2? const ScreenStamp() : const SizedBox.shrink()
            ],
          ),
          floatingActionButton: FloatingActionButton(onPressed: (){
            print(AppPageRoute.stampScreen);
            Get.toNamed(AppPageRoute.stampScreen);
            
          }, child: Icon(Icons.add),
          ),
          floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
          
          bottomNavigationBar:  BottomNavigationBarWidget(controller: controller,)
         
          
        );
      }
    );
  }

  
}