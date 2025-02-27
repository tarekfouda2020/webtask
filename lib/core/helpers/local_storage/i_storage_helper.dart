abstract class IStorageHelper {
  Future<void> saveData<T>(String key, T value, {String? container});

  T? getData<T>(String key, {String? container});

  T? getContainerDataValues<T>(String container);

  Future<void> clear({String? container});

  Future<void> remove(String key, {String? container});

  Future<Map<String, dynamic>?> getJson(String key);

  Future<void> saveJson(String key, Map<String, dynamic> value);
}
