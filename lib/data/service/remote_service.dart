import 'package:dio/dio.dart';

class RemoteService {
  static Dio instance = Dio(
    BaseOptions(baseUrl: 'http://expertdevelopers.ir/api/v1/'),
  );
}
