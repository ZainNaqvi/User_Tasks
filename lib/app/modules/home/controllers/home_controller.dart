import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

import '../../calender/views/calender_view.dart';
import '../../notification/views/notification_view.dart';
import '../../search/views/search_view.dart';
import '../../todohome/views/todohome_view.dart';

class HomeController extends GetxController {
  //TODO: Implement HomeController
  @override
  void onReady() {
    // TODO: implement onReady
    super.onReady();
    hideBottom();
  }

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    hideBottom();
  }

  List widgets = <Widget>[
    TodohomeView(),
    CalenderView(),
    NotificationView(),
    SearchView(),
  ];
  hideBottom() async {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersiveSticky,
        overlays: [SystemUiOverlay.top]);
  }

  int selectedBottomIndex = 0;
  updateBottomIndex(int index) {
    selectedBottomIndex = index;
    print(selectedBottomIndex);
    update();
  }
}
