import 'package:get/get.dart';
import 'package:machine_test_project/pages/chat_screen/chat_screen.dart';
import 'package:machine_test_project/pages/main_page/screen_main_page.dart';
import 'package:machine_test_project/pages/profile/screen_profile.dart';
import 'package:machine_test_project/pages/screen_stamp/screen_stamp.dart';

class AppPageRoute {

  static List<GetPage> routes = [
    GetPage(name: navBar, page: () => ScreenMainPage(),),
    GetPage(name: chatScreen, page: () => const ChatScreen(),),
    GetPage(name: stampScreen, page: () => const ScreenStamp()),
    GetPage(name: profileScreen, page: () => const ScreenProfile(),),


  ];


String getNavBar() => navBar;
String getChat() => chatScreen;
String getStamp() => stampScreen;
String getProfile() => profileScreen;

  static String navBar = "/";
  static String chatScreen = "/chat_screen";
  static String stampScreen = "/stamp_screen";
  static String profileScreen = "/profile_screen";
}