import 'package:dio/dio.dart';

class ApiService {
  final dio = Dio();

  Future<int> getRandomNumber() async {
    final response =
        await dio.get('https://www.randomnumberapi.com/api/v1.0/random');
    return response.data[0];
  }
}
