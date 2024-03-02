import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ScreenProfile extends StatelessWidget {
const ScreenProfile({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context){
    return Container(
      height: 100,
      width: 300,
      margin: EdgeInsets.only(top: 50),
      color: Colors.white,
      child: Image.network("https://img.freepik.com/free-photo/cute-domestic-kitten-sits-window-staring-outside-generative-ai_188544-12519.jpg")
    );
  }
}