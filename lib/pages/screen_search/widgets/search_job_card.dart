import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:cached_network_image/cached_network_image.dart';

class SearchJobCard extends StatelessWidget {
  const SearchJobCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 25, right: 25, top: 20),
      child: Container(
        // height: 400.h,
        width: double.infinity,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(15),
            boxShadow: const [
              BoxShadow(
                color: Colors.grey,
                blurRadius: 5,
                offset: Offset(0.5, 0.5),
              )
            ]),
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                  height: 150.h,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(10.r)),
                      color: Colors.white,
                      image: const DecorationImage(
                          image: AssetImage("assets/picture.png"))),
                  child: Stack(
                    children: [
                     
                      Align(
                          alignment: Alignment.bottomLeft,
                          child: Padding(
                            padding: const EdgeInsets.only(bottom: 10),
                            child: Container(
                                height: 17.h,
                                width: 70.w,
                                decoration: BoxDecoration(
                                    color: Colors.red,
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(5.r))),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      '本日まで',
                                      style: TextStyle(fontSize: 10.sp),
                                    ),
                                  ],
                                )),
                          ))
                    ],
                  )),
              SizedBox(height: 10.h),
              Text(
                '介護有料老人ホームひまわり倶楽部の介護職／ヘルパー求人（パート／バイト）',
                style: TextStyle(fontSize: 14.sp, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                mainAxisSize: MainAxisSize.max,
                children: [
                  Container(
                    width: 150.w,
                    height: 20.h,
                    color: Color.fromARGB(255, 249, 237, 222),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Expanded(
                          child: Text(
                            '介護付き有料老人ホーム',
                            style: TextStyle(
                                fontSize: 12, color: Colors.orange[200]),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const Text(
                    '¥ 6,000',
                    style: TextStyle(
                      fontSize: 12,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 5.h),
              const Text('5月 31日（水）08 : 00 ~ 17 : 00'),
              SizedBox(height: 5.h),
              const Text('北海道札幌市東雲町3丁目916番地17号'),
              SizedBox(height: 5.h),
              const Text('交通費 300円'),
              SizedBox(height: 5.h),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    '住宅型有料老人ホームひまわり倶楽部',
                    style: TextStyle(color: Color.fromARGB(255, 194, 191, 191)),
                  ),
                  Icon(
                    Icons.favorite_border_outlined,
                    color: Color.fromARGB(255, 194, 191, 191),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
