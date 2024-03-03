import 'dart:ffi';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:machine_test_project/pages/main_page/screen_main_page.dart';
import 'package:machine_test_project/pages/screen_stamp/card_list.dart';
import 'package:machine_test_project/pages/screen_stamp/stamp_card.dart';

class ScreenStamp extends StatelessWidget {
  const ScreenStamp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Scaffold(
        backgroundColor: Color.fromARGB(255, 180, 188, 249),
        body: SingleChildScrollView(
          child: Column(children: [
            SizedBox(
              height: 20.h,
            ),
            _buildTopSection(context),
            SizedBox(
              height: 20.h,
            ),
            _buildBottomPartWidget(context),
          ]),
        ),
      ),
    );
  }

  _buildTopSection(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              InkWell(
                onTap: (){
                  Get.off(ScreenMainPage());
                },
                child: Container(
                    height: 40.h,
                    width: 40.w,
                    decoration: const BoxDecoration(
                      color: Color.fromARGB(255, 159, 169, 247),
                      shape: BoxShape.circle,
                    ),
                    child: Icon(
                      Icons.arrow_back_ios_new_outlined,
                      size: 18.sp,
                      color: Colors.white,
                    )),
              ),
              Text(
                'スタンプカード詳細',
                style: TextStyle(fontSize: 14.sp, color: Colors.white),
              ),
              Icon(
                CupertinoIcons.minus_circle,
                size: 24.sp,
                color: Colors.white,
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text('Mer キッチン', style: TextStyle(color: Colors.white)),
              RichText(
                  text: TextSpan(
                      text: '現在の獲得数',
                      style: const TextStyle(
                        color: Colors.white,
                      ),
                      children: <TextSpan>[
                    TextSpan(
                        text: ' 30',
                        style: TextStyle(
                          fontSize: 24.sp,
                          fontWeight: FontWeight.bold,
                        )),
                    const TextSpan(text: ' 個', style: TextStyle()),
                  ]))
            ],
          )
        ],
      ),
    );
  }

  _buildBottomPartWidget(BuildContext context) {
    return Container(
      width: double.infinity,
      // height: 500.h,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20.r),
            topRight: Radius.circular(20.r),
          )),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 20.h,
              ),
              _buildStampList(context),
              const Padding(
                padding:  EdgeInsets.only(left: 15, right: 15),
                child:  Text(
                  'スタンプ獲得履歴',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
                SizedBox(
                height: 20.h,
              ),
              _buildCarddList(context)
             
              
             
            
            ],
          ),
        ),
      ),
    );
  }

  _buildStampList(BuildContext context) {
    return Container(
      height: 180.h,
      child: Padding(
        padding: const EdgeInsets.all(0),
        child: ListView.separated(
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return const StampCard();
            },
            separatorBuilder: (context, index) {
              return SizedBox(
                width: 0.w,
              );
            },
            itemCount: 5),
      ),
    );
  }

  _buildCarddList(BuildContext context) {
    return Column(
      children: [
         const CardList(date: "2021/11/18", num: "1", title: "スタンプを獲得しました。"),
            Divider(
              height: 2.h,
              endIndent: 10.w,
              indent: 10.w,
            ),
            const CardList(date: "2021/11/17", num: "1", title: "スタンプを獲得しました。"),
            Divider(
              height: 2.h,
              endIndent: 10.w,
              indent: 10.w,
            ),
            const CardList(date: "2021/11/16", num: "1", title: "スタンプを獲得しました。"),
            Divider(
              height: 2.h,
              endIndent: 10.w,
              indent: 10.w,
            ),
             const CardList(date: "2021/11/13", num: "1", title: "スタンプを獲得しました。"),
            Divider(
              height: 2.h,
              endIndent: 10.w,
              indent: 10.w,
            ),
            const CardList(date: "2021/11/12", num: "1", title: "スタンプを獲得しました。"),
            Divider(
              height: 2.h,
              endIndent: 10.w,
              indent: 10.w,
            ),
            const CardList(date: "2021/11/11", num: "1", title: "スタンプを獲得しました。"),
            Divider(
              height: 2.h,
              endIndent: 10.w,
              indent: 10.w,
            ),
              const CardList(date: "2021/11/8", num: "1", title: "スタンプを獲得しました。"),
            Divider(
              height: 2.h,
              endIndent: 10.w,
              indent: 10.w,
            ),
      ],
    );
  }
}
