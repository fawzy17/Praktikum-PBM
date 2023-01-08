// To parse this JSON data, do
//
//     final tasteeModel = tasteeModelFromJson(jsonString);

import 'dart:convert';

TasteeModel tasteeModelFromJson(String str) =>
    TasteeModel.fromJson(json.decode(str));

String tasteeModelToJson(TasteeModel data) => json.encode(data.toJson());

class TasteeModel {
  TasteeModel({
    required this.id,
    required this.title,
    required this.description,
    required this.price,
    required this.image,
  });

  int id;
  String title;
  String description;
  String price;
  String image;

  factory TasteeModel.fromJson(Map<String, dynamic> json) => TasteeModel(
        id: json["id"],
        title: json["title"],
        description: json["description"],
        price: json["price"],
        image: json["image"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "title": title,
        "description": description,
        "price": price,
        "image": image,
      };
}

List<TasteeModel> parse(String? json) {
  if (json == null) {
    return [];
  }

  final List parsed = jsonDecode(json)['tastee'];
  return parsed.map((data) => TasteeModel.fromJson(data)).toList();
}