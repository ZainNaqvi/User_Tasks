import 'package:get/get.dart';

import '../modules/addtask/bindings/addtask_binding.dart';
import '../modules/addtask/views/addtask_view.dart';
import '../modules/calender/bindings/calender_binding.dart';
import '../modules/calender/views/calender_view.dart';
import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';
import '../modules/notification/bindings/notification_binding.dart';
import '../modules/notification/views/notification_view.dart';
import '../modules/search/bindings/search_binding.dart';
import '../modules/search/views/search_view.dart';
import '../modules/todohome/bindings/todohome_binding.dart';
import '../modules/todohome/views/todohome_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.HOME;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.TODOHOME,
      page: () => TodohomeView(),
      binding: TodohomeBinding(),
    ),
    GetPage(
      name: _Paths.CALENDER,
      page: () => const CalenderView(),
      binding: CalenderBinding(),
    ),
    GetPage(
      name: _Paths.NOTIFICATION,
      page: () => const NotificationView(),
      binding: NotificationBinding(),
    ),
    GetPage(
      name: _Paths.SEARCH,
      page: () => const SearchView(),
      binding: SearchBinding(),
    ),
    GetPage(
      name: _Paths.ADDTASK,
      page: () => const AddtaskView(),
      binding: AddtaskBinding(),
    ),
  ];
}
