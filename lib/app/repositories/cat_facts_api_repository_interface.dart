import 'package:my_app/app/models/cat_facts_api_model.dart';

abstract class ICatFactsApiRepository {
  Future<CatFactsApiModel> getCatFacts();
}
