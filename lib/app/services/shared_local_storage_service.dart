import 'package:my_app/app/interfaces/local_storage_interface.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SharedLocalStorageService implements ILocalStorage {
  @override
  Future<void> delete(String key) async {
    var shared = await SharedPreferences.getInstance();
    shared.remove(key);
  }

  @override
  Future<dynamic> get(String key) async {
    var shared = await SharedPreferences.getInstance();
    return shared.get(key);
  }

  @override
  Future<void> put(String key, dynamic value) async {
    var shared = await SharedPreferences.getInstance();
    print(
        "[SharedLocalStorageService] put(String key, dynamic value) - this is the new value to be storaged: $value");
    if (value is bool) {
      shared.setBool(key, value);
    } else if (value is double) {
      shared.setDouble(key, value);
    } else if (value is int) {
      shared.setInt(key, value);
    } else if (value is String) {
      shared.setString(key, value);
    } else if (value is List<String>) {
      shared.setStringList(key, value);
    }
  }
}
