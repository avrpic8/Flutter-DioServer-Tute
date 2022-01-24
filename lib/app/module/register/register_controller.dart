import 'package:flutter/material.dart';
import 'package:flutter_server_dio/app/data/model/student.dart';
import 'package:flutter_server_dio/app/data/provider/student_provider.dart';
import 'package:get/get.dart';

class RegisterController extends GetxController {
  final StudentProvider provider;

  final firstNameController = TextEditingController();
  final lastNameController = TextEditingController();
  final courseController = TextEditingController();
  final scoreController = TextEditingController();

  RegisterController({required this.provider});

  Future<Student?> addStudent(
      String firstName, String lastName, String course, int score) async {
    final result =
        await provider.addStudent(firstName, lastName, course, score);
    return result.body;
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
