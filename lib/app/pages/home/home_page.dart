import 'package:flutter/material.dart';
import 'package:my_app/app/models/cat_facts_api_model.dart';
import 'package:my_app/app/pages/home/home_controller.dart';
import 'components/dark_mode_switch.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home Page"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          DarkModeSwitch(),
          ValueListenableBuilder<CatFactsApiModel>(
              valueListenable: HomeController.instance.catFactData,
              builder: (context, catFactData, child) {
                return Text(
                  catFactData.text,
                  style: TextStyle(fontSize: 20),
                  textAlign: TextAlign.center,
                );
              })
        ],
      ),
    );
  }
}
