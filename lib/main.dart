import 'package:flutter/material.dart';
import 'package:flutter_server_dio/app/module/home/home_binding.dart';
import 'package:flutter_server_dio/app/module/home/home_page.dart';
import 'package:flutter_server_dio/app/routes/app_pages.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
          primarySwatch: Colors.blue,
          inputDecorationTheme:
              const InputDecorationTheme(border: OutlineInputBorder())),
      initialBinding: HomeBinding(),
      getPages: AppPages.routes,
      home: const HomePage(),
    );
  }
}
