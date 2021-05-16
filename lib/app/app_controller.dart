import 'package:flutter/material.dart';
import 'package:my_app/app/interfaces/local_storage_interface.dart';
import 'package:my_app/app/models/appconfig_model.dart';
import 'package:my_app/app/services/shared_local_storage_service.dart';

class AppController {
  // este é um exemplo de construtor privado. O acesso a esse tipo de contrutor
  // é permitido somente dentro da sua própria classe.
  AppController._() {
    localStorage.get('isDark').then((value) {
      print(
          "[AppController] AppController._() - this is the storaged value: $value");
      if (value != null) {
        config.darkModeSwitch.value = value;
      }
    });
  }

  // para que os campos e métodos de um controller possam ser usados em toda a
  // aplicação, o controller precisa ser um singleton ou injetado em uma soluçáo
  // de injeção de dependência.

  // um singleton pode ser criado da seguinte forma:
  // static AppController instace = Appcontroller();
  // Contudo, para evitar a criação de novas instâncias, é necessário criar um
  // contrutor privado, tal como descreve o primeiro comentário desta classe.
  // Por fim, para evitar que novas implementações sejam feitas à instância
  // deste controller ao longo da aplicação, é necessário que a instância do
  // controller seja "final", como ilustra o códio abaixo.
  static final AppController instance = AppController._();
  final AppConfigModel config = AppConfigModel();
  final ILocalStorage localStorage = SharedLocalStorageService();

  bool get isDark => config.darkModeSwitch.value;
  ValueNotifier<bool> get darkModeSwitch => config.darkModeSwitch;

  void changeTheme(bool newValue) {
    config.darkModeSwitch.value = newValue;
    print(
        "[AppController] changeTheme(bool newValue) - this is the new value: $newValue");
    localStorage.put('isDark', newValue);
  }
}
