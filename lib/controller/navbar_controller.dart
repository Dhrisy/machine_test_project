import 'package:get/get.dart';

class NavBarController extends GetxController{
  var current_index = 0;
  void changeIndex(int index){
    current_index = index;
    print(current_index);
    update();
  }
}