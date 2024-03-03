import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DayDateWidget extends StatefulWidget {
  const DayDateWidget({Key? key}) : super(key: key);

  @override
  _DayDateWidgetState createState() => _DayDateWidgetState();
}

class _DayDateWidgetState extends State<DayDateWidget> {
  // Store the selected date index
  int selectedDateIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 0, right: 0, top: 20, bottom: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          _buildDate(context, index: 0, day: '木', date: '26'),
          _buildDate(context, index: 1, day: '金', date: '27'),
          _buildDate(context, index: 2, day: '土', date: '28'),
          _buildDate(context, index: 3, day: '日', date: '29'),
          _buildDate(context, index: 4, day: '月', date: '30'),
          _buildDate(context, index: 5, day: '火', date: '31'),
          _buildDate(context, index: 6, day: '水', date: '31'),
        ],
      ),
    );
  }

  _buildDate(BuildContext context,
      {required int index, required String day, required String date}) {
    return GestureDetector(
      onTap: () {
        // Update the selected date index
        setState(() {
          selectedDateIndex = index;
        });
      },
      child: Container(
        width: 45.w,
        decoration: BoxDecoration(
          color: selectedDateIndex == index ? Colors.orange[300] : Colors.transparent,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Padding(
          padding: const EdgeInsets.all(5.0),
          child: Column(
            children: [
              Text(
                day,
                style: TextStyle(fontSize: 18),
              ),
              Text(
                date,
                style: TextStyle(fontSize: 18),
              )
            ],
          ),
        ),
      ),
    );
  }
}
