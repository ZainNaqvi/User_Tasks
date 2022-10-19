import 'package:get/get.dart';

import '../controllers/todohome_controller.dart';

class TodohomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<TodohomeController>(
      () => TodohomeController(),
    );
  }
}
