import 'dart:developer';

import 'package:base_structure/core/helpers/local_storage/i_storage_helper.dart';
import 'package:cache_manager/cache_manager.dart';
import 'package:get_storage/get_storage.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: IStorageHelper)
class StorageHelper extends IStorageHelper {

  /// to save data in storage
  @override
  Future<void> saveData<T>(String key, T value, {String? container}) async {
    /// encryption only for String value
    final box = _getStorageBox(container);
    await box.write(key, value);
  }

  /// to get data from storage
  @override
  T? getData<T>(String key, {String? container}) {
    final box = _getStorageBox(container);
    T? value = box.read<T>(key);
    return value;
  }

  @override
  T? getContainerDataValues<T>(String container) {
    final box = _getStorageBox(container);
    return box.getValues();
  }

  /// to get storage box
  GetStorage _getStorageBox(String? container) {
    if (container != null) {
      final box = GetStorage(container);
      return box;
    }
    return GetStorage();
  }

  /// to clear storage with container name if container is not null
  @override
  Future<void> clear({String? container}) async {
    GetStorage box = _getStorageBox(container);
    await box.erase();
  }

  /// to remove data from storage using key
  @override
  Future<void> remove(String key, {String? container}) async {
    GetStorage box = _getStorageBox(container);
    await box.remove(key);
  }

  /// to init storage with default container and any named container
  static Future<void> init() async {
    await GetStorage.init();
  }

  /// This method is built to cache simple json where the key of the object
  /// is the type of it (object will not be saved in real DB like in ObjectBox)
  @override
  Future<void> saveJson(String key, Map<String, dynamic> value) async {
    try {
      await WriteCache.setJson(key: key, value: value);
    } catch (e) {
      log('Save json error: $e');
      // log(s.toString());
    }
  }

  /// This method is built to get cached object by its type
  /// where the object was saved with its simple json
  @override
  Future<Map<String, dynamic>?> getJson(String key) async {
    try {
      final jsonData = await ReadCache.getJson(key: key);
      log('jsonData from local: $jsonData');
      return jsonData;
    } catch (e) {
      log('Get json error: $e');
      // log(s.toString());
    }
    return null;
  }
}
