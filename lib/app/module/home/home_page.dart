import 'package:flutter/material.dart';
import 'package:flutter_server_dio/app/data/provider/student_provider.dart';
import 'package:flutter_server_dio/app/module/home/home_controller.dart';
import 'package:get/instance_manager.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);

  final homeCtr = Get.put(HomeController(studentProvider: StudentProvider()));

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
