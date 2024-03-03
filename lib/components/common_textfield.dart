import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CommonTextfield extends StatelessWidget {
const CommonTextfield({ Key? key, required this.controller,
required this.hintText }) : super(key: key);
final TextEditingController controller;
final String hintText;




  @override
  Widget build(BuildContext context){
    return Container(
      decoration:  BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(5.r)),
        border: Border.all(
          color: Color.fromARGB(255, 236, 234, 234)
        )
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 8),
        child: TextFormField(
                    controller: controller,
                    decoration: InputDecoration(
                      // filled: true,
                      hintText: hintText,
                      // fillColor: Colors.white,
                      border: InputBorder.none,
                      
                      focusedBorder: OutlineInputBorder(
                       
                        borderRadius: BorderRadius.circular(0.0),
                      ),
                    ),
                    // Your TextFormField properties go here
                  ),
      ),
    );
  }
}