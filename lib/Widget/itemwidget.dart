import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ItemWidget extends StatelessWidget {
  final String firstSvgPath;
  final String lastSvgPath;
  final String itemName;
  final String itemDetails;

  const ItemWidget({
    Key? key,
    required this.firstSvgPath,
    required this.lastSvgPath,
    required this.itemName,
    required this.itemDetails,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(16.w, 22.h, 25.w, 24.h),
      child: Row(
        children: [
          Container(
            decoration: BoxDecoration(
              color: Colors.grey.shade300,
              borderRadius: BorderRadius.circular(16),
            ),
            width: 140.w,
            height: 200.h,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SvgPicture.asset(
                  firstSvgPath,
                  height: 100.h,
                  width: 70.w,
                ),
                SizedBox(height: 8.h),
                Text(
                  itemName,
                  style: TextStyle(fontSize: 10.sp, color: Colors.black),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      itemDetails,
                      style: TextStyle(fontSize: 9.sp, color: Colors.red),
                    ),
                    SvgPicture.asset(
                      lastSvgPath,
                      height: 25.h,
                      width: 36.w,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
