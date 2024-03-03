import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ScreenProfile extends StatelessWidget {
const ScreenProfile({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context){
    return const Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        children: [Text('Screen Account')],
      );
  }
}