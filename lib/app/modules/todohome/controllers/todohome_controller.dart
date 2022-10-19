import 'package:flutter/services.dart';
import 'package:get/get.dart';

class TodohomeController extends GetxController {
  //TODO: Implement TodohomeController

  final count = 0.obs;
  @override
  void onInit() {
    super.onInit();
    hideBottom();
  }

  @override
  void onReady() {
    super.onReady();
    hideBottom();
  }

  @override
  void onClose() {
    super.onClose();
  }

  void increment() => count.value++;
  hideBottom() async {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersiveSticky,
        overlays: [SystemUiOverlay.top]);
  }

  int selectedIndex = 0;
  updateSelectedIndex(int index) {
    selectedIndex = index;
    update();
  }
}
