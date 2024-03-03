import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:machine_test_project/pages/screen_location/widgets/checkbox_controller.dart';

class CheckboxWidget extends StatelessWidget {
  final CheckboxController controller = Get.put(CheckboxController());



  ValueNotifier<bool> checkNotifier = ValueNotifier(false);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
         const Text(
            'Check the box:',
            style: TextStyle(fontSize: 18),
          ),
        
        const  SizedBox(height: 10),
          GetBuilder<CheckboxController>(
            builder: (controller) => Checkbox(
              value: controller.isChecked.value,
              onChanged: (bool? value) {
                checkNotifier.value = value!;
                controller.isChecked.value = value!;
              },
            ),
          ),
        const  SizedBox(height: 20),
          GetBuilder<CheckboxController>(
            builder: (controller) => Text(
              'Checkbox is ${controller.isChecked.value ? 'checked' : 'unchecked'}',
              style:const TextStyle(fontSize: 18),
            ),
          ),
        ],
      ),
    );
  }
}
