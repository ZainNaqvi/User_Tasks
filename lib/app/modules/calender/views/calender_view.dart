import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/calender_controller.dart';

class CalenderView extends GetView<CalenderController> {
  const CalenderView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('CalenderView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'CalenderView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
