import 'package:shared_preferences/shared_preferences.dart';

class SharedService {
  static SharedPreferences? _storage;

  static Future<void> init() async {
    _storage = await SharedPreferences.getInstance();
  }

  static Future<void> writeString(
      {required String key, required dynamic value}) async {
    final storage = _storage;
    if (storage == null) {
      throw StateError('SharedService not initialized. Call init() first.');
    }
    await storage.setString(key, value);
  }

  static Future<void> writeBool(
      {required String key, required dynamic value}) async {
    final storage = _storage;
    if (storage == null) {
      throw StateError('SharedService not initialized. Call init() first.');
    }
    await storage.setBool(key, value);
  }

  static Future<void> writeInt(
      {required String key, required dynamic value}) async {
    final storage = _storage;
    if (storage == null) {
      throw StateError('SharedService not initialized. Call init() first.');
    }
    await storage.setInt(key, value);
  }

  static Future<void> writeStringList(
      {required String key, required dynamic value}) async {
    final storage = _storage;
    if (storage == null) {
      throw StateError('SharedService not initialized. Call init() first.');
    }
    await storage.setStringList(key, value);
  }

  static String? readString(String key) {
    final storage = _storage;
    if (storage == null) {
      throw StateError('SharedService not initialized. Call init() first.');
    }
    return storage.getString(key);
  }

  static bool? readBool(String key) {
    final storage = _storage;
    if (storage == null) {
      throw StateError('SharedService not initialized. Call init() first.');
    }
    return storage.getBool(key);
  }

  static double? readDouble(String key) {
    final storage = _storage;
    if (storage == null) {
      throw StateError('SharedService not initialized. Call init() first.');
    }
    return storage.getDouble(key);
  }

  static int? readInt(String key) {
    final storage = _storage;
    if (storage == null) {
      throw StateError('SharedService not initialized. Call init() first.');
    }
    return storage.getInt(key);
  }

  static List<String>? readStringList(String key) {
    final storage = _storage;
    if (storage == null) {
      throw StateError('SharedService not initialized. Call init() first.');
    }
    return storage.getStringList(key);
  }

  static Future<void> deleteKey(String key) async {
    final storage = _storage;
    if (storage == null) {
      throw StateError('SharedService not initialized. Call init() first.');
    }
    await storage.remove(key);
  }

  static Future<void> clear() async {
    final storage = _storage;
    if (storage == null) {
      throw StateError('SharedService not initialized. Call init() first.');
    }
    await storage.clear();
  }
}
