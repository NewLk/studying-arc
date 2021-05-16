import 'package:flutter/material.dart';
import 'package:my_app/app/services/shared_local_storage_service.dart';
import 'package:my_app/app/viewmodels/change_theme_viewmodel.dart';

class AppController {
  // este é um exemplo de construtor privado. O acesso a esse tipo de contrutor
  // é permitido somente dentro da sua própria classe.
  AppController._() {
    changeThemeViewModel.init();
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

  final ChangeThemeViewModel changeThemeViewModel =
      ChangeThemeViewModel(localStorage: SharedLocalStorageService());

  bool get isDark => changeThemeViewModel.config.darkModeSwitch.value;

  ValueNotifier<bool> get darkModeSwitch =>
      changeThemeViewModel.config.darkModeSwitch;
}
