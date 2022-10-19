import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/addtask_controller.dart';

class AddtaskView extends GetView<AddtaskController> {
  const AddtaskView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('AddtaskView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'AddtaskView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
