import 'package:my_app/app/models/appconfig_model.dart';
import 'package:my_app/app/repositories/cat_facts_api_repository_interface.dart';

class CatFactsApiViewModel {
  CatFactsApiViewModel(this.repository);

  final ICatFactsApiRepository repository;

  final AppConfigModel config = AppConfigModel();

  Future init() async {
    config.catFactsApiModel.value = await repository.getCatFacts();
  }
}
