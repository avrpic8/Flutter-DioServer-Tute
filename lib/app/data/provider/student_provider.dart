import 'package:flutter_server_dio/app/core/constant.dart';
import 'package:flutter_server_dio/app/data/model/student.dart';
import 'package:get/get.dart';

class StudentProvider extends GetConnect {
  @override
  void onInit() {
    httpClient.defaultDecoder = Student.listFromJson;
    httpClient.baseUrl = baseUrl;
    super.onInit();
  }

  Future<Response<List<Student>>> getAllStudents() => get('experts/student');

  Future<Response<Student>> addStudent(
          String firstName, String lastName, String course, int score) =>
      post<Student>(
          'experts/student',
          {
            'first_name': firstName,
            'last_name': lastName,
            'corse': course,
            'score': score
          },
          decoder: (data) => Student.fromJson(data));
}
