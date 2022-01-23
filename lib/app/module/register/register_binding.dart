import 'package:flutter_server_dio/app/module/register/register_controller.dart';
import 'package:get/instance_manager.dart';

class RegisterBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => RegisterController());
  }
}
