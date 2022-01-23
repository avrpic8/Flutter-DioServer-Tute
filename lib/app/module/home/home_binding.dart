import 'package:flutter_server_dio/app/data/provider/student_provider.dart';
import 'package:flutter_server_dio/app/module/home/home_controller.dart';
import 'package:get/instance_manager.dart';

class HomeBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => StudentProvider());
    Get.lazyPut(() => HomeController());
  }
}
