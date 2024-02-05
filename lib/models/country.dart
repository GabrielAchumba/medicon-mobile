class Country {
  late String country;
  late String code;

  Country.fromJson(dynamic json) {
    country = json['name'];
    code = json['code'];
  }
}