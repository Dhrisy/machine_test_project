import 'package:get/get.dart';
import 'package:machine_test_project/pages/chat_screen/chat_screen.dart';
import 'package:machine_test_project/pages/main_page/screen_main_page.dart';
import 'package:machine_test_project/pages/profile/screen_profile.dart';
import 'package:machine_test_project/pages/screen_job/screen_job.dart';
import 'package:machine_test_project/pages/screen_location/screen_location.dart';
import 'package:machine_test_project/pages/screen_search/screen_search.dart';
import 'package:machine_test_project/pages/screen_stamp/screen_stamp.dart';

class AppPageRoute {

  static List<GetPage> routes = [
    GetPage(name: navBar, page: () => ScreenMainPage(),),
    GetPage(name: chatScreen, page: () => const ChatScreen(),),
    GetPage(name: stampScreen, page: () => const ScreenStamp()),
    GetPage(name: profileScreen, page: () => const ScreenProfile(),),
    GetPage(name: searchScreen, page: () => const ScreenSearch(),),
    GetPage(name: jobScreen, page: () => const ScreenJob(),),
    GetPage(name: locationScreen, page: () =>  ScreenLocation())


  ];


String getNavBar() => navBar;
String getChat() => chatScreen;
String getStamp() => stampScreen;
String getProfile() => profileScreen;
String getSearch() => searchScreen;
String getJob() => jobScreen;
String getLocation() => locationScreen;

  static String navBar = "/";
  static String searchScreen = "/search+screen";
  static String locationScreen = "/location_screen";
  static String jobScreen = "/job_screen";
  static String chatScreen = "/chat_screen";
  static String stampScreen = "/stamp_screen";
  static String profileScreen = "/profile_screen";
}