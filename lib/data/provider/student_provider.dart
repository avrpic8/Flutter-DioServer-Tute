import 'package:flutter_server_dio/data/model/student.dart';
import 'package:flutter_server_dio/data/service/remote_service.dart';

class StudentProvider {
  
  Future<List<Student>> getStudents() async {
    final response = await RemoteService.instance.get('experts/student');
    print(response);
    List<Student> students = [];
    return students;
  }
}
