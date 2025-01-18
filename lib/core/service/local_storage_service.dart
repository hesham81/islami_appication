// import 'package:shared_preferences/shared_preferences.dart';
//
// class LocalStorageService {
//   static late SharedPreferences _preferences;
//
//   static init() async {
//     _preferences = await SharedPreferences.getInstance();
//   }
//
//   Future<bool> setBool(String key, bool value) async {
//     return await _preferences.setBool(key, value);
//   }
//
//   Future<bool> setString(String key, String value) async {
//     return await _preferences.setString(key, value);
//   }
//
//   Future<bool> setInt(String key, int value) async {
//     return await _preferences.setInt(key, value);
//   }
//
//   bool? getBool(String key) {
//     return _preferences.getBool(key);
//   }
//
//   String? getString(String key) {
//     return _preferences.getString(key);
//   }
//
//   int? getInt(String key) {
//     return _preferences.getInt(key);
//   }
// }
