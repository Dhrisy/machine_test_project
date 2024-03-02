import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SearchSection extends StatefulWidget {
  const SearchSection({Key? key}) : super(key: key);

  @override
  _SearchSectionState createState() => _SearchSectionState();
}

class _SearchSectionState extends State<SearchSection> {

  TextEditingController _textEditingController =TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SizedBox(width: 15.w,),
        Expanded(
          child: Container(
            decoration: BoxDecoration(
              color: Colors.grey[200],
               borderRadius: BorderRadius.circular(35),
            ),
            child: TextFormField(
              controller: _textEditingController,
              decoration: InputDecoration(
                fillColor: Colors.grey[200],
                border: InputBorder.none,
                focusedBorder: OutlineInputBorder(
                 
                  borderRadius: BorderRadius.circular(10.0),
                ),
              ),
              // Your TextFormField properties go here
            ),
          ),
        ),
         SizedBox(width: 15.w,),
        Row(
          children: [
             const Icon(Icons.filter_list_outlined),
          // const Icon(Icons.filter_tilt_shift_outlined),
          SizedBox(width: 5.w,),
         const Icon(Icons.favorite_border_outlined),
         SizedBox(width: 5.w,),
          ],
        )
      ],
    );
  }
}
