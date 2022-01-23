import 'package:flutter/material.dart';
import 'package:flutter_server_dio/app/data/model/student.dart';
import 'package:flutter_server_dio/app/data/provider/student_provider.dart';
import 'package:get/get.dart';

class RegisterController extends GetxController {
  final studentProvider = Get.find<StudentProvider>();

  final firstNameController = TextEditingController();
  final lastNameController = TextEditingController();
  final courseController = TextEditingController();
  final scoreController = TextEditingController();

  Future<Student> addStudent(
      String firstName, String lastName, String course, int score) async {
    Student result = (await studentProvider.addStudent(
        firstName, lastName, course, score)) as Student;
    print(result);
    return result;
  }

  @override
  void onClose() {
    firstNameController.dispose();
    lastNameController.dispose();
    courseController.dispose();
    scoreController.dispose();
    super.onClose();
  }
}
