import 'package:flutter_server_dio/app/data/model/student.dart';
import 'package:get/get.dart';

class StudentProvider extends GetConnect {
  @override
  void onInit() {
    baseUrl = 'http://expertdevelopers.ir/api/v1/';
    httpClient.defaultDecoder = Student.listFromJson;
    super.onInit();
  }

  Future<Response<List<Student>>> getAllStudents() =>
      get<List<Student>>(baseUrl! + 'experts/student');
}
