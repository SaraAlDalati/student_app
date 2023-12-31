// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CellTime extends StatelessWidget {
  final String timeInCell;
  const CellTime({
    Key? key,
    required this.timeInCell,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(4),
      child: Container(
        height: 23.h,
        width: 48.w,
        decoration: BoxDecoration(
          color: Color.fromRGBO(65, 105, 225, 1),
          borderRadius: BorderRadius.circular(20),
        ),
        child: Center(
          child: Text(
            timeInCell,
            style: TextStyle(
       color:Color.fromRGBO(233, 238, 252,1),
        fontFamily: 'Montserrat',
        fontWeight: FontWeight.bold,
        fontSize: 16.sp,
       )   ,
          ),
        ),
      ),
    );
  }
}