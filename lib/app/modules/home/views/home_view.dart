import 'package:app_my_tasks/app/modules/calender/views/calender_view.dart';
import 'package:app_my_tasks/app/modules/notification/views/notification_view.dart';
import 'package:app_my_tasks/app/modules/search/views/search_view.dart';
import 'package:app_my_tasks/app/modules/todohome/views/todohome_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  List taskListMenu = ["Pending", "New", "Completed"];
  List bottomNavigationBar = [
    "assets/svg/home.svg",
    "assets/svg/calender.svg",
    "assets/svg/notification.svg",
    "assets/svg/search.svg",
  ];
  List widgets = <Widget>[
    TodohomeView(),
    CalenderView(),
    NotificationView(),
    SearchView(),
  ];
  HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Get.put(TodohomeView());
    return Scaffold(
      backgroundColor: Color(0xffF8FFFD),
      body: widgets[controller.selectedBottomIndex],
      bottomNavigationBar: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            width: Get.width,
            height: 60.h,
            decoration: const BoxDecoration(
              color: Colors.white,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: List.generate(
                bottomNavigationBar.length,
                (index) => TextButton(
                  onPressed: () async {},
                  child: SvgPicture.asset(
                    bottomNavigationBar[index],
                    width: 24.w,
                    height: 24.h,
                  ),
                ),
              ),
            ),
          ),
          SizedBox(height: 6.h),
        ],
      ),
    );
  }
}
