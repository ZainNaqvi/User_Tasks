import 'package:flutter/services.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  //TODO: Implement HomeController
  @override
  void onReady() {
    // TODO: implement onReady
    super.onReady();
    hideBottom();
  }

  @override
  void onClose() {
    // TODO: implement onClose
    super.onClose();
  }

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    hideBottom();
  }

  hideBottom() async {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersiveSticky,
        overlays: [SystemUiOverlay.top]);
  }

  int selectedIndex = 0;
  updateSelectedIndex(int index) {
    selectedIndex = index;
    update();
  }

  int selectedBottomIndex = 0;
  updateBottomIndex(int index) {
    selectedBottomIndex = index;
    print(selectedBottomIndex);
    update();
  }
}
