import 'package:dio/dio.dart';

class ApiService {
  final dio = Dio();

  Future<int> getRandomNumber() async {
    try {
      final response =
          await dio.get('https://www.randomnumberapi.com/api/v1.0/random');
      return response.data[0];
    } catch (e) {
      throw Exception();
    }
  }
}
