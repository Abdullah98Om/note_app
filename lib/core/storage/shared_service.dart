import 'package:shared_preferences/shared_preferences.dart';

class SharedService {
  static SharedPreferences? _storage;

  static Future<void> init() async {
    _storage = await SharedPreferences.getInstance();
  }

  static Future<void> writeString(
      {required String key, required dynamic value}) async {
    await _storage!.setString(key, value);
  }

  static Future<void> writeBool(
      {required String key, required dynamic value}) async {
    await _storage?.setBool(key, value);
  }

  static Future<void> writeInt(
      {required String key, required dynamic value}) async {
    await _storage?.setInt(key, value);
  }

  static Future<void> writeStringList(
      {required String key, required dynamic value}) async {
    await _storage?.setStringList(key, value);
  }

  static String? readString(String key) {
    return _storage?.getString(key);
  }

  static bool? readBool(String key) {
    return _storage?.getBool(key);
  }

  static double? readDouble(String key) {
    return _storage?.getDouble(key);
  }

  static int? readInt(String key) {
    return _storage?.getInt(key);
  }

  static List<String>? readStringList(String key) {
    return _storage?.getStringList(key);
  }

  static Future<void> deleteKey(String key) async {
    await _storage!.remove(key);
  }

  static Future<void> clear() async {
    await _storage?.clear();
  }
}
