import 'package:flutter/cupertino.dart';
import 'package:my_app/app/models/cat_facts_api_model.dart';
import 'package:my_app/app/repositories/cat_facts_api_repository.dart';
import 'package:my_app/app/services/client_http_service.dart';
import 'package:my_app/app/viewmodels/cat_facts_api_viewmodel.dart';

class HomeController {
  HomeController._() {
    viewModel.init();
  }
  static final HomeController instance = HomeController._();

  final CatFactsApiViewModel viewModel = CatFactsApiViewModel(
    CatFactsApiRepository(
      ClientHttpService(),
    ),
  );

  ValueNotifier<CatFactsApiModel> get catFactData =>
      viewModel.config.catFactsApiModel;
}
