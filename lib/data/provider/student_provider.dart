import 'package:flutter_server_dio/data/model/student.dart';
import 'package:flutter_server_dio/data/service/remote_service.dart';

class StudentProvider {
  Future<List<Student>> getStudents() async {
    final List<Student> students = [];
    final response = await RemoteService.instance.get('experts/student');
    print(response);
    if (response.data is List<dynamic>) {
      (response.data as List<dynamic>).forEach((element) {
        students.add(Student.fromJson(element));
      });
    }
    print(students.toString());
    return students;
  }
}
