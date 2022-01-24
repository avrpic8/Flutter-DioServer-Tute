import 'package:flutter/material.dart';
import 'package:flutter_server_dio/app/module/home/home_controller.dart';
import 'package:flutter_server_dio/app/module/home/widget/student_card.dart';
import 'package:flutter_server_dio/app/routes/app_pages.dart';
import 'package:get/get.dart';

class HomePage extends GetView<HomeController> {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    controller.getAllStudents;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Android Expert'),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () async {
          await Get.toNamed(Routes.REGISTER);
          controller.getAllStudents();
        },
        label: Row(
          children: const [
            Icon(Icons.add),
            Text('Add Students'),
          ],
        ),
      ),
      body: controller.obx(
        (state) => ListView.builder(
          padding: const EdgeInsets.only(bottom: 80),
          itemCount: state?.length,
          itemBuilder: (context, index) {
            return StudentCard(student: state![index]);
          },
        ),
      ),
    );
  }
}
