import 'package:my_app/app/interfaces/client_http_interface.dart';
import 'package:my_app/app/models/cat_facts_api_model.dart';
import 'package:my_app/app/repositories/cat_facts_api_repository_interface.dart';

class CatFactsApiRepository implements ICatFactsApiRepository {
  final IClientHttp client;

  CatFactsApiRepository(this.client);

  @override
  Future<CatFactsApiModel> getCatFacts() async {
    var json = await client.get("https://cat-fact.herokuapp.com/facts/random");

    CatFactsApiModel model = CatFactsApiModel.fromJson(json);
    return model;
  }
}
