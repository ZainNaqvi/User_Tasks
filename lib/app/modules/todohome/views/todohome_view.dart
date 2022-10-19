import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import 'package:get/get.dart';

import '../controllers/todohome_controller.dart';

class TodohomeView extends GetView<TodohomeController> {
  List taskListMenu = ["Pending", "New", "Completed"];
  TodohomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 12.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(top: 32.0.h),
              child: SvgPicture.asset(
                width: 34.w,
                height: 34.sp,
                "assets/svg/drawer.svg",
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 11.h),
              child: Text(
                'Hello, Tony!',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 28.sp,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            SizedBox(height: 22.h),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: List.generate(
                  taskListMenu.length,
                  (index) => Container(
                    width: 104.w,
                    margin: EdgeInsets.only(right: 12.w, left: 8.w),
                    child: TextButton(
                      style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(Colors.white),
                        shape: MaterialStateProperty.all(StadiumBorder()),
                      ),
                      onPressed: () {
                        controller.updateSelectedIndex(index);
                      },
                      child: Text(
                        taskListMenu[index],
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          color: Colors.black,
                          fontSize: 18.sp,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
