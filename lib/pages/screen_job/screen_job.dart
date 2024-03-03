import 'package:flutter/material.dart';

class ScreenJob extends StatelessWidget {
const ScreenJob({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context){
    return  const Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        children: [Text('Screen Job')],
      );
  }
}