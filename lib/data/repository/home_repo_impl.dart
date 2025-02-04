import '../data.dart';

@Injectable(as: HomeRepo)
class HomeRepoImpl implements HomeRepo {
  final ApiService _apiService = ApiService();
  @override
  Future<int> getRandomNumber() {
    return _apiService.getRandomNumber();
  }
}
