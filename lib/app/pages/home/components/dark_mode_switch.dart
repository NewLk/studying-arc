import 'package:flutter/material.dart';
import 'package:my_app/app/app_controller.dart';

class DarkModeSwitch extends StatelessWidget {
  /// Componente responsável por exibir um botão do tipo switch no formato
  /// especificado. O botão em questão é responsável por habilitar ou
  /// desabilitar o tema escuro da aplicação e o faz com o auxilio do
  /// controlador [AppController].
  DarkModeSwitch();

  @override
  Widget build(BuildContext context) {
    return Switch(
      value: AppController.instance.isDark,
      onChanged: (bool newValue) {
        AppController.instance.changeThemeViewModel.changeTheme(newValue);
      },
    );
  }
}
