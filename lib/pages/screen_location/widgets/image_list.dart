import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ImageList extends StatelessWidget {
  ImageList({Key? key, required this.images, required this.title, required this.subTitle}) : super(key: key);

  final List<String> images;
  final Widget title;
  final String subTitle;

  
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            title,
            SizedBox(width: 
            5.w
            ),

            Text(subTitle,
            style: const TextStyle(color: Colors.grey,
            fontWeight: FontWeight.w400
            ),
            )
          ],
        ),
    
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
           
               Expanded(child: Image.asset(images[0])),
                Expanded(child: Image.asset(images[1])),
                Expanded(child: Image.asset(images[2]))
        
          ],
        ),
      ],
    );
  }

  _buildWidget(BuildContext context, List image) {
    final lenth = image.length;
    print('llllllllllllllllllllll');
    print(lenth);
    return Row(
      children: [
        Stack(
          children: [
            Image.asset(
              image[0],
              height: 90.h,
              width: 90.w,
            ),
            Positioned(
              top: 8.h,
              right: 13.w,
              // alignment: AlignmentDirectional.topEnd,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(
                    Icons.close,
                    size: 18.sp,
                    color: Colors.white,
                  )
                ],
              ),
            )
          ],
        )
      ],
    );
  }

  // widget of the image

_buildImagdCard(
    BuildContext context,
    String image,
    // int index
  ) {
    return Container(
          height: 100,
          width: 100,
decoration: BoxDecoration(image: DecorationImage(image: AssetImage(images[2]))),
        );
  }


  /*_buildImagdCard(
    BuildContext context,
    String image,
    // int index
  ) {
    
    return Stack(
      children: [
        Container(
          width: 80.w,
          height: 80.h,
          

          decoration: BoxDecoration(
            color: Colors.red,
            image: DecorationImage(image: AssetImage(image),
            fit: BoxFit.cover)
          ),
          // child: Image.asset(
          //   image,
          //   height: 90.h,
          //   width: 90.w,
          // ),
        ),
        Positioned(
          top: 8.h,
          right: 13.w,
          // alignment: AlignmentDirectional.topEnd,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(
                Icons.close,
                size: 18.sp,
                color: Colors.white,
              )
            ],
          ),
        )
      ],
    );

  
  }*/
}
