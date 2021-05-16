import 'package:flutter/material.dart';
import 'package:my_app/app/app_controller.dart';

import 'pages/home/home_page.dart';

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<bool>(
        valueListenable: AppController.instance.darkModeSwitch,
        builder: (context, isDark, child) {
          return MaterialApp(
            theme: ThemeData(
                primarySwatch: Colors.blue,
                brightness: isDark ? Brightness.dark : Brightness.light),
            home: HomePage(),
          );
        });
  }
}
