import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class StampCard extends StatelessWidget {
const StampCard({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context){
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Container(
          margin:const EdgeInsets.only(bottom: 10, left: 20,),
          height: 150.h,
          width: 260.w,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20.r),
            boxShadow: [
              BoxShadow(
                blurRadius: 10.r,
                color: Color.fromARGB(255, 219, 218, 218),
                offset:const Offset(0, 5),
              )
            ]
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
               SizedBox(width: 5.h,),
              _buildImageWidget(context),
               SizedBox(height: 5.h,),
            _buildImageWidget(context),
            SizedBox(height: 5.h,),
             _buildImageWidget(context),
          //  SizedBox(height: 5.h,),
            
           
            ],
          ),
        ),
        const Row(
              mainAxisAlignment: MainAxisAlignment.end,
              
              children: [
                Text('2 / 2枚目'),
              ],
            ),
      ],
    );
  }


  _buildImageWidget(BuildContext context){
    return Padding(
      padding: const EdgeInsets.only(bottom: 8, left: 10, right: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          // SizedBox(width: 5.w,),
          Container(
           
            child: Stack(
              children: [
                Image.asset("assets/images/Star 1.png"),
                Padding(
                  padding: const EdgeInsets.all(9.0),
                  child: Image.asset("assets/images/star 8.png"),
                ),

              ],
            )),
         
          //  const SizedBox(width: 10,),
           Container(
            
            child: Stack(
              children: [
                Image.asset("assets/images/Star 1.png"),
                Padding(
                  padding: const EdgeInsets.all(9.0),
                  child: Image.asset("assets/images/star 8.png"),
                ),

              ],
            )),
           
            
            // const SizedBox(width: 10,),
            Container(
            
            child: Stack(
              children: [
                Image.asset("assets/images/Star 1.png"),
                Padding(
                  padding: const EdgeInsets.all(9.0),
                  child: Image.asset("assets/images/star 8.png"),
                ),

              ],
            )),
         
          //  const SizedBox(width: 10,),
           Container(
            
            child: Stack(
              children: [
                Image.asset("assets/images/Star 1.png"),
                Padding(
                  padding: const EdgeInsets.all(9.0),
                  child: Image.asset("assets/images/star 8.png"),
                ),

              ],
            )),
            
             Container(
            
            child: Stack(
              children: [
                Image.asset("assets/images/Star 1.png"),
                Padding(
                  padding: const EdgeInsets.all(9.0),
                  child: Image.asset("assets/images/star 8.png"),
                ),

              ],
            )),
            
            // const SizedBox(width: 10,),
        ],
      ),
    );
  }
}