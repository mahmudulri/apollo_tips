class CustomModel {
  String? legue;
  String? team;
  String? score;

  CustomModel({
    this.legue,
    this.team,
    this.score,
  });

  factory CustomModel.fromJson(dynamic json) {
    return CustomModel(
      legue: "${json['legue']}",
      team: "${json['team']}",
      score: "${json['score']}",
    );
  }

  Map toJson() => {
        "legue": legue,
        "team": team,
        "score": score,
      };
}
