import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class SecureCacheHelper {
  final FlutterSecureStorage _storage;

  SecureCacheHelper(this._storage);

  // ---- Helper Methods ----
  Future<void> _write(String key, dynamic value) async {
    await _storage.write(key: key, value: value.toString());
  }

  Future<T?> _read<T>(String key, T Function(String) parser) async {
    final value = await _storage.read(key: key);
    return value != null ? parser(value) : null;
  }

  // ---- Main Methods ----
  Future<void> saveString({required String key, required String value}) async {
    await _write(key, value);
  }

  Future<String?> getString(String key) async {
    return await _read(key, (value) => value);
  }

  Future<void> saveBool({required String key, required bool value}) async {
    await _write(key, value);
  }

  Future<bool?> getBool(String key) async {
    return await _read(key, (value) => value == 'true');
  }

  Future<void> saveInt({required String key, required int value}) async {
    await _write(key, value);
  }

  Future<int?> getInt(String key) async {
    return await _read(key, int.parse);
  }

  Future<void> saveDouble({required String key, required double value}) async {
    await _write(key, value);
  }

  Future<double?> getDouble(String key) async {
    return await _read(key, double.parse);
  }

  Future<void> removeKey(String key) async {
    await _storage.delete(key: key);
  }

  Future<bool> containsKey(String key) async {
    return await _storage.containsKey(key: key);
  }

  Future<void> clearAll() async {
    await _storage.deleteAll();
  }
}
