import 'cat_fact_api_status_model.dart';

class CatFactsApiModel {
  late CatFactsApiStatus status;
  late String type;
  late bool deleted;
  late String sId;
  late String updatedAt;
  late String createdAt;
  late String user;
  late String text;
  late String source;
  late int iV;
  late bool used;

  CatFactsApiModel(
      {required this.status,
      this.type = "",
      this.deleted = false,
      this.sId = "",
      this.updatedAt = "",
      this.createdAt = "",
      this.user = "",
      this.text = "",
      this.source = "",
      this.iV = 0,
      this.used = false});

  CatFactsApiModel.fromJson(Map<String, dynamic> json) {
    status = new CatFactsApiStatus.fromJson(json['status']);
    type = json['type'];
    deleted = json['deleted'];
    sId = json['_id'];
    updatedAt = json['updatedAt'];
    createdAt = json['createdAt'];
    user = json['user'];
    text = json['text'];
    source = json['source'];
    iV = json['__v'];
    used = json['used'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['status'] = this.status.toJson();
    data['type'] = this.type;
    data['deleted'] = this.deleted;
    data['_id'] = this.sId;
    data['updatedAt'] = this.updatedAt;
    data['createdAt'] = this.createdAt;
    data['user'] = this.user;
    data['text'] = this.text;
    data['source'] = this.source;
    data['__v'] = this.iV;
    data['used'] = this.used;
    return data;
  }
}
