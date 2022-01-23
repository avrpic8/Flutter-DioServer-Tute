import 'package:flutter_server_dio/app/module/home/home_binding.dart';
import 'package:flutter_server_dio/app/module/home/home_page.dart';
import 'package:flutter_server_dio/app/module/register/register_binding.dart';
import 'package:flutter_server_dio/app/module/register/register_student_page.dart';
import 'package:get/get.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.HOME;

  static final routes = [
    GetPage(
      name: '/home',
      page: () => const HomePage(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: '/register',
      page: () => const RegisterStudentPage(),
      binding: RegisterBinding(),
    ),
  ];
}
