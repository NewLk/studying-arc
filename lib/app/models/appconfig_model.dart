import 'package:flutter/material.dart';
import 'package:my_app/app/models/cat_facts_api_model.dart';
import 'cat_fact_api_status_model.dart';

class AppConfigModel {
  final ValueNotifier<bool> darkModeSwitch = ValueNotifier<bool>(false);

  final catFactsApiModel = ValueNotifier<CatFactsApiModel>(CatFactsApiModel(
      status: CatFactsApiStatus(verified: false, sentCount: 0)));
}
