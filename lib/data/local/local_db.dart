import '../data.dart';

class LocalDataBase {
  LocalDataBase._internal();
  static final LocalDataBase _instance = LocalDataBase._internal();

  static LocalDataBase get instance => _instance;

  void saveLastPrimeData(DateTime time, int number) async {
    final SharedPreferences preferences = await SharedPreferences.getInstance();
    String dateTime = time.toString();
    preferences.setString("PrimeTime", dateTime);
    preferences.setInt("PrimeNumber", number);
  }

  Future<DbModel?> getLastPrimeData() async {
    final SharedPreferences preferences = await SharedPreferences.getInstance();

    String? dateTime = preferences.getString("PrimeTime");
    int? number = preferences.getInt("PrimeNumber");
    if (dateTime != null && number != null) {
      return DbModel(primeNumber: number, primeTime: DateTime.parse(dateTime));
    }
    return null;
  }

  void clearData() async {
    final SharedPreferences preferences = await SharedPreferences.getInstance();
    preferences.clear();
  }
}
