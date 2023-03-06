// To parse this JSON data, do
//
//     final regularModel = regularModelFromJson(jsonString);

import 'dart:convert';

List<RegularModel> regularModelFromJson(String str) => List<RegularModel>.from(
    json.decode(str).map((x) => RegularModel.fromJson(x)));

String regularModelToJson(List<RegularModel> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class RegularModel {
  RegularModel({
    this.legue,
    this.team,
    this.score,
  });

  String? legue;
  String? team;
  String? score;

  factory RegularModel.fromJson(Map<String, dynamic> json) => RegularModel(
        legue: json["legue"],
        team: json["team"],
        score: json["score"],
      );

  Map<String, dynamic> toJson() => {
        "legue": legue,
        "team": team,
        "score": score,
      };
}
