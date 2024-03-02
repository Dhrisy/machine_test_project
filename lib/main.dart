import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:machine_test_project/pages/error_page.dart';
import 'package:machine_test_project/pages/main_page/screen_main_page.dart';
import 'package:machine_test_project/routes/route.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialRoute: AppPageRoute.navBar,
    getPages: AppPageRoute.routes,
    onUnknownRoute: (settings) {
      // Handle unknown routes here
      return MaterialPageRoute(builder: (context) => ErrorPage());
    },
      title: 'Flutter Demo',
      theme: ThemeData(
       
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home:  ScreenMainPage(),
    );
  }
}
