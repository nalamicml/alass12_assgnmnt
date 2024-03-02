import 'package:flutter/material.dart';
import 'package:assgnmnt12/Widget/itemwidget.dart';
import 'package:assgnmnt12/Widget/image.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: EdgeInsets.fromLTRB(14.w, 14.0.h, 14.w, 14.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                color: Color.fromARGB(255, 248, 248, 248),
                width: 342.w,
                height: 44.h, // Grey background color
                child: Center(
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    //mainAxisAlignment:
                    //MainAxisAlignment.spaceBetween, // Align to the right
                    children: [
                      ImageWidget(
                        imagePath: 'images/1.svg',
                        width: 44.w,
                        height: 44.h,
                      ),
                      SizedBox(
                        width: 11.w,
                      ), // Adding space between the image and the text
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        // Aligning items to the start (left)
                        children: [
                          Text(
                            'Good morning',
                            style: TextStyle(fontSize: 10.sp),
                          ),
                          Text(
                            'Amelia Barlow',
                            style: TextStyle(fontSize: 12.sp),
                          ),
                        ],
                      ),

                      Expanded(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Container(
                              width: 115.w,
                              height: 42.h,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(67),
                              ),
                              child: Row(
                                children: [
                                  SizedBox(
                                    width: 16.w,
                                  ),
                                  ImageWidget(
                                    imagePath: 'images/2.svg',
                                    width: 15.w,
                                    height: 18.h,
                                  ),
                                  SizedBox(width: 8.w),
                                  Text(
                                    'My Flat',
                                    style: TextStyle(fontSize: 8.sp),
                                  ),
                                  SizedBox(width: 8.h),
                                  ImageWidget(
                                    imagePath: 'images/3.svg',
                                    width: 6.w,
                                    height: 10.h,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                  height: 10.h,
                  color: Color.fromARGB(255, 248, 248,
                      248)), // Adding some space between the rows
              Container(
                color: const Color.fromARGB(
                    255, 248, 248, 248), // Grey background color
                child: Row(
                  children: [
                    Container(
                      width: 342.w,
                      height: 50.h,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(67),
                      ),
                      child: Row(
                        children: [
                          SizedBox(width: 16.h),
                          ImageWidget(
                            imagePath: 'images/4.svg',
                            width: 13.w,
                            height: 13.h,
                          ),
                          SizedBox(width: 8.w),
                          Text(
                            'Search category',
                            style: TextStyle(fontSize: 10.sp),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                height: 10.h,
                color: Colors.white,
              ),
              Container(
                color: Colors.white, // White background color
                width: 342.w,
                height: 50.h,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Text(
                          'Categories',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 11.sp,
                          ),
                        ),
                        SizedBox(
                            width: 8.w), // Add space between text and image
                        ImageWidget(
                          imagePath: 'images/1.svg',
                          width: 17.w,
                          height: 17.h,
                        ),
                      ],
                    ),
                    Text(
                      'See All',
                      style: TextStyle(fontSize: 10.sp, color: Colors.green),
                    ),
                  ],
                ),
              ),
              Container(
                height: 10.h,
                color: Colors.white,
              ),
              Container(
                width: 342.w,
                height: 70.h,
                decoration: BoxDecoration(
                    color: Colors.white), // Adding decoration to the container
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ImageWidget(
                      imagePath: 'images/6.svg',
                      width: 73.w,
                      height: 70.h,
                    ),
                    SizedBox(width: 16.w),
                    ImageWidget(
                      imagePath: 'images/7.svg',
                      width: 73.w,
                      height: 70.h,
                    ),
                    SizedBox(width: 16.w),
                    ImageWidget(
                      imagePath: 'images/8.svg',
                      width: 73.w,
                      height: 70.h,
                    ),
                    SizedBox(width: 16.w),
                    ImageWidget(
                      imagePath: 'images/8.svg',
                      width: 73.w,
                      height: 70.h,
                    ),
                  ],
                ),
              ),
              Container(
                height: 5.h,
                color: Colors.white,
              ),
              Container(
                width: 342.w,
                height: 70.h,
                decoration: BoxDecoration(
                    color: Colors.white), // Adding decoration to the container
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text('Fruits'),
                    SizedBox(width: 16.w),
                    Text('Vegetable'),
                    SizedBox(width: 16.w),
                    Text('Dairy'),
                    SizedBox(width: 16.w),
                    Text('Meet'),
                  ],
                ),
              ),
              Container(
                height: 10.h,
                color: Colors.white,
              ),
              Row(
                children: [
                  Container(
                    decoration: BoxDecoration(color: Colors.white),
                    width: 342.w,
                    height: 25.h,
                    child: Row(
                      mainAxisAlignment:
                          MainAxisAlignment.spaceBetween, // Aligning items
                      children: [
                        Text(
                          'Best Selling',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 11.sp),
                        ),
                        ImageWidget(
                          imagePath: 'images/10.svg',
                          height: 15.h,
                          width: 17.w,
                        ),
                        Text(
                          'See All',
                          style:
                              TextStyle(fontSize: 10.sp, color: Colors.green),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Container(
                height: 10.h,
                color: Colors.white,
              ),
              Row(
                children: [
                  ItemWidget(
                    firstSvgPath: 'images/8.svg',
                    itemName: 'Bell Pepper Red',
                    itemDetails: '1kg, 4',
                    lastSvgPath: 'images/12.svg',
                  ),
                  ItemWidget(
                    firstSvgPath: 'images/7.svg',
                    itemName: 'Bell Pepper Red',
                    itemDetails: '1kg, 4',
                    lastSvgPath: 'images/12.svg',
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
