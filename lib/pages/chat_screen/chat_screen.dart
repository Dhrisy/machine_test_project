import 'package:flutter/material.dart';

class ChatScreen extends StatelessWidget {
const ChatScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context){
    return const Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        children: [Text('Screen chat')],
      );
  }
}