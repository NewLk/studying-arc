class CatFactsApiStatus {
  late bool verified;
  late int sentCount;

  CatFactsApiStatus({
    this.verified = false,
    this.sentCount = 0,
  });

  CatFactsApiStatus.fromJson(Map<String, dynamic> json) {
    verified = json['verified'];
    sentCount = json['sentCount'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['verified'] = this.verified;
    data['sentCount'] = this.sentCount;
    return data;
  }
}
