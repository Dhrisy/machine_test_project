import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:machine_test_project/pages/screen_search/widgets/day_date_widget.dart';
import 'package:machine_test_project/pages/screen_search/widgets/search_job_card.dart';
import 'package:machine_test_project/pages/screen_search/widgets/search_section.dart';

class ScreenSearch extends StatelessWidget {
  const ScreenSearch({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
               SizedBox(height: 20.h,),
             const  SearchSection(),
             SizedBox(height: 20.h,),
               _dateWidget(context),
               const DayDateWidget(),
               Container(
                height: MediaQuery.of(context).size.height * 1,
                color: Colors.transparent,
                child: ListView.separated(itemBuilder: ((context, index) {
                          return SearchJobCard();
                        }), 
                        separatorBuilder: ((context, index) {
                          return SizedBox(height: 10.h,);
                        }), 
                        itemCount: 10),
               )

              
              
          
            ],
          ),
        ),
      ),
    );
  }

  _dateWidget(BuildContext context){
    return Container(
      width: double.infinity,
      height: 40.h,
      color: Colors.orange[300],
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('2022年 5月 26日（木）',
          style: TextStyle(fontWeight: FontWeight.w500),)
        ],
      ),
    );

  }


}
