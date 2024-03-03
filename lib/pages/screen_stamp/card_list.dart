import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CardList extends StatelessWidget {
const CardList({ Key? key, required this.date,
required this.num, required this.title }) : super(key: key);

final String date;
final String title;
final String num;

  @override
  Widget build(BuildContext context){
    return  ListTile
    (title: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [

Text(date,
style: TextStyle(fontSize: 12.sp,
color: Colors.grey),),
SizedBox(height: 5.h,),
Row(
  mainAxisAlignment: MainAxisAlignment.spaceBetween,
  children: [
    Text(title),
    Text("$num 個"),
  ],
)

      ],
    ),
    
    );
  }
}