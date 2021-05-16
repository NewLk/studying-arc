import 'package:my_app/app/interfaces/local_storage_interface.dart';
import 'package:my_app/app/models/appconfig_model.dart';

class ChangeThemeViewModel {
  ChangeThemeViewModel({required this.localStorage});

  final ILocalStorage localStorage;

  final AppConfigModel config = AppConfigModel();

  Future init() async {
    await localStorage.get('isDark').then((value) {
      print(
          "[AppController] AppController._() - this is the storaged value: $value");
      if (value != null) {
        config.darkModeSwitch.value = value;
      }
    });
  }

  void changeTheme(bool newValue) {
    config.darkModeSwitch.value = newValue;
    print(
        "[AppController] changeTheme(bool newValue) - this is the new value: $newValue");
    localStorage.put('isDark', newValue);
  }
}
