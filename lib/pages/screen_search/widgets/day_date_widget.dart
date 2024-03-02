import 'package:flutter/material.dart';

class DayDateWidget extends StatelessWidget {
const DayDateWidget({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context){
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [

        _buildDate(context, day: 'mon', date: '23'),
        
        _buildDate(context, day: 'mon', date: '23'),
        _buildDate(context, day: 'mon', date: '23'),
        _buildDate(context, day: 'mon', date: '23'),
        _buildDate(context, day: 'mon', date: '23'),
        _buildDate(context, day: 'mon', date: '23'),

      ],
    );
  }


  _buildDate(BuildContext context, {required String day, required String date}){
    return  Column(
      children: [
        Text(day,
        style: TextStyle(fontSize: 18),),
        Text(date,
        style: TextStyle(fontSize: 18),)
      ],
    );
  }
}