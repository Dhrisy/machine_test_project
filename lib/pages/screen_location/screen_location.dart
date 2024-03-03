import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:machine_test_project/components/common_textfield.dart';
import 'package:machine_test_project/pages/main_page/screen_main_page.dart';
import 'package:machine_test_project/pages/screen_location/widgets/checkbox_controller.dart';
import 'package:machine_test_project/pages/screen_location/widgets/checkbox_widget.dart';
import 'package:machine_test_project/pages/screen_location/widgets/image_list.dart';

class ScreenLocation extends StatelessWidget {
  ScreenLocation({Key? key}) : super(key: key);

  TextEditingController _textEditingController = TextEditingController();
  TextEditingController _storeNameTextEditingController =
      TextEditingController();
  TextEditingController _nameTextEditingController = TextEditingController();
  TextEditingController _phnTextEditingController = TextEditingController();
  TextEditingController _taddressTextEditingController =
      TextEditingController();
  TextEditingController _dishTextEditingController = TextEditingController();

  List<String> image_list1 = [
    "assets/images/image_1.png",
    "assets/images/image_1.png",
    "assets/images/default_image.png"
  ];
  List<String> image_list2 = [
    "assets/images/image2.png",
    "assets/images/image2.png",
    "assets/images/image2.png"
  ];
  List<String> image_list3 = [
    "assets/images/image_3.png",
    "assets/images/image4.png",
    "assets/images/image11.png"
  ];

  List<String> image_list4 = [
    "assets/images/image_6.png",
    "assets/images/image7.png",
    "assets/images/image8.png"
  ];
  List<String> image_list5 = [
    "assets/images/image9.png",
    "assets/images/green_coca.png",
    "assets/images/red_coc.png"
  ];

  // final checkedBoxController = Get.put(CheckboxController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 20.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    onTap: () {
                      Get.off(ScreenMainPage());
                    },
                    child: Container(
                        height: 40.h,
                        width: 40.w,
                        decoration: const BoxDecoration(
                          color: Color.fromARGB(255, 238, 236, 236),
                          shape: BoxShape.circle,
                        ),
                        child: Icon(
                          Icons.arrow_back_ios_new_outlined,
                          size: 18.sp,
                          color: Colors.grey,
                        )),
                  ),
                  Text(
                    'スタンプカード詳細',
                    style: TextStyle(fontSize: 14.sp, color: Colors.black),
                  ),
                  Container(
                    height: 40.h,
                    width: 40.w,
                    decoration: const BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage(
                                "assets/images/notification_image.png"))),
                    // child: SvgPicture.asset("assets/notification.svg"),
                  ),
                ],
              ),
               SizedBox(
                height: 5.h,
              ),
              
              Divider(
                color: Color.fromARGB(255, 231, 228, 228),
                // height: 1.h,
              ),
               SizedBox(
                height: 15.h,
              ),
              
              _buildTopTextFiledSection(context),
              Container(
                height: 200.h,
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Colors.transparent,
                    borderRadius: BorderRadius.all(Radius.circular(8.r)),
                    image: const DecorationImage(
                        image: AssetImage("assets/map.png"),
                        fit: BoxFit.cover)),
                // child: Image.asset("assets/map.png"),
              ),
              ImageList(
                images: image_list1,
                title: _buildRichText(context, "店舗外観"),
                subTitle: "(最大3枚まで)",
              ),
              ImageList(
                  images: image_list2,
                  title: _buildRichText(context, "店舗外観"),
                  subTitle: "(1枚〜3枚ずつ追加してください)"),
              ImageList(
                  images: image_list3,
                  title: _buildRichText(context, "店舗外観"),
                  subTitle: "(1枚〜3枚ずつ追加してください)"),
              ImageList(
                  images: image_list4,
                  title: _buildRichText(context, "店舗外観"),
                  subTitle: "(1枚〜3枚ずつ追加してください)"),
              SizedBox(
                height: 5.h,
              ),
              _rowTimwWidget(context, "営業時間"),
              SizedBox(
                height: 10.h,
              ),
              _rowTimwWidget(context, "ランチ時間"),

               SizedBox(
                height: 15.h,
              ),
              _buildRichText(context, "定休日"),
               SizedBox(
                height: 5.h,
              ),
              _widgetCheckbox(context),

              SizedBox(
                height: 10.h,
              ),
              _buildRichText(context, "料理カテゴリー"),
               SizedBox(
                height: 5.h,
              ),
              _buildDropdown(context, "料理カテゴリー選択", 200),
              SizedBox(
                height: 15.h,
              ),
              _rowTimwWidget(context, "予算"),
              SizedBox(
                height: 15.h,
              ),
              _buildRichText(context, "キャッチコピー"),
              SizedBox(
                height: 5.h,
              ),
              CommonTextfield(
                  controller: _dishTextEditingController,
                  hintText: "美味しい！リーズナブルなオムライスランチ！"),
              SizedBox(
                height: 10.h,
              ),
              _buildRichText(context, "座席数"),
              SizedBox(
                height: 5.h,
              ),
              CommonTextfield(
                  controller: _dishTextEditingController, hintText: "40席"),

              SizedBox(
                height: 10.h,
              ),

              _buildRichText(context, "喫煙席"),
              Row(
                children: [
                  _buildCheckbox(context, "有", true),
                  SizedBox(
                    width: 10.w,
                  ),
                  _buildCheckbox(context, "無", false),
                ],
              ),

              SizedBox(
                height: 10.h,
              ),
              _buildRichText(context, "駐車場"),
              Row(
                children: [
                  _buildCheckbox(context, "有", true),
                  SizedBox(
                    width: 10.w,
                  ),
                  _buildCheckbox(context, "無", false),
                ],
              ),
              SizedBox(
                height: 10.h,
              ),
              _buildRichText(context, "来店プレゼント"),
             
              ImageList(images: image_list5, title: Row(), subTitle: ""),
              SizedBox(
                height: 5.h,
              ),

              _buildRichText(context, "来店プレゼント"),
              CommonTextfield(
                  controller: _dishTextEditingController,
                  hintText: "いちごクリームアイスクリーム, ジュース"),

SizedBox(
                height: 25.h,
              ),
              Container(
                height: 40.h,
                decoration: BoxDecoration(
                    color: Color.fromARGB(255, 246, 151, 145),
                    borderRadius: BorderRadius.circular(5.r)),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "編集を保存",
                      style: TextStyle(color: Colors.white),
                    )
                  ],
                ),
              ),
            
            SizedBox(
                height: 15.h,
              ),
            ],
          ),
        ),
      ),
    );
  }

  _buildCheckbox(BuildContext context, String title, bool check) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Checkbox(
          checkColor: Colors.white,

          side: BorderSide(color: Color.fromARGB(255, 212, 210, 210)),
          activeColor: Colors.orange[300],

          value: check, // Set the initial value of the checkbox
          onChanged: (bool? value) {
            // Handle checkbox changes here
          },
        ),
        Text(
          title,
          style: TextStyle(fontSize: 16.sp),
        )
      ],
    );
  }

  _rowTimwWidget(BuildContext context, String title) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _buildRichText(context, title),
        SizedBox(
          height: 5.h,
        ),
        Row(
          children: [
            _buildDropdown(context, "10 : 00", 130),
            const Text(" 〜 "),
            _buildDropdown(context, "20 : 00", 130),
          ],
        ),
      ],
    );
  }

  _widgetCheckbox(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            _buildCheckbox(context, "月", false),
            SizedBox(
              width: 10.w,
            ),
            _buildCheckbox(context, "火", false),
            SizedBox(
              width: 10.w,
            ),
            _buildCheckbox(context, "水", false),
            SizedBox(
              width: 10.w,
            ),
            _buildCheckbox(context, "木", false),
          ],
        ),
        Row(
          children: [
            _buildCheckbox(context, "金", false),
            SizedBox(
              width: 10.w,
            ),
            _buildCheckbox(context, "土", true),
            SizedBox(
              width: 10.w,
            ),
            _buildCheckbox(context, "日", true),
            SizedBox(
              width: 10.w,
            ),
            _buildCheckbox(context, "祝", true),
          ],
        ),
      ],
    );
  }

  _buildDropdown(BuildContext context, String title, double width) {
    return Container(
        height: 35.h,
        width: width.w,
        decoration: BoxDecoration(
            color: Colors.transparent,
            border: Border.all(color: const Color.fromARGB(255, 211, 209, 209)),
            borderRadius: BorderRadius.all(Radius.circular(5.r))),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              title,
              style: TextStyle(fontSize: 14.sp),
            ),
            SizedBox(
              width: 15.w,
            ),
            Icon(
              Icons.keyboard_arrow_down_outlined,
              size: 28.sp,
              color: Colors.grey,
            )
          ],
        ));
  }

  _buildTopTextFiledSection(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _buildRichText(context, '店舗名'),
        CommonTextfield(
          controller: _textEditingController,
          hintText: "Mer キッチン",
        ),
        SizedBox(
          height: 20.h,
        ),
        _buildRichText(context, '代表担当者名'),
        CommonTextfield(
          controller: _textEditingController,
          hintText: "林田　絵梨花",
        ),
        SizedBox(
          height: 20.h,
        ),
        _buildRichText(context, '店舗電話番号'),
        CommonTextfield(
          controller: _textEditingController,
          hintText: "123 - 4567 8910",
        ),
        SizedBox(
          height: 20.h,
        ),
        _buildRichText(context, '店舗住所'),
        CommonTextfield(
          controller: _textEditingController,
          hintText: "大分県豊後高田市払田791-13",
        ),
        SizedBox(
          height: 20.h,
        ),
      ],
    );
  }

  _buildRichText(BuildContext context, String title) {
    return RichText(
        text: TextSpan(
            text: title,
            style: const TextStyle(
              color: Colors.black,
            ),
            children: const <TextSpan>[
          TextSpan(
              text: '*',
              style: TextStyle(fontWeight: FontWeight.bold, color: Colors.red)),
        ]));
  }
}
