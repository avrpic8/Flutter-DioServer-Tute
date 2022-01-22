import 'package:flutter_server_dio/app/data/model/student.dart';
import 'package:flutter_server_dio/app/data/provider/student_provider.dart';
import 'package:get/state_manager.dart';

class HomeController extends GetxController with StateMixin<List<Student>> {
  final StudentProvider studentProvider;

  HomeController({required this.studentProvider});

  @override
  void onInit() {
    getAllStudents();
    super.onInit();
  }

  void getAllStudents() {
    studentProvider.getAllStudents().then((result) {
      List<Student>? data = result.body;
      change(data, status: RxStatus.success());
    }, onError: (err) {
      change(null, status: RxStatus.error(err.toString()));
    });
  }
}
