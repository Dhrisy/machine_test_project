import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ScreenProfile extends StatelessWidget {
const ScreenProfile({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context){
    return Column(
      children: [
        Container(
          height: 100,
          width: 300,
          margin: EdgeInsets.only(top: 50),
          color: Colors.red,
          
        ),
         Container(
          height: 100,
          width: 300,
          margin: EdgeInsets.only(top: 50),
          color: Colors.green,
         
        ),
      ],
    );
  }
}