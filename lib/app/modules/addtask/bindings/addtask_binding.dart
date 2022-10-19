import 'package:get/get.dart';

import '../controllers/addtask_controller.dart';

class AddtaskBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AddtaskController>(
      () => AddtaskController(),
    );
  }
}
