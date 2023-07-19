class CommunityModel {

  String? name;
  String? challengeRound;
  String? bethefristlike;
  String? days;


  CommunityModel({
      this.name, 
      this.challengeRound, 
      this.bethefristlike, 
      this.days,});

  CommunityModel.fromJson(dynamic json) {
    name = json['name'];
    challengeRound = json['challenge Round'];
    bethefristlike = json['be the frist like'];
    days = json['days'];
  }

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['name'] = name;
    map['challenge Round'] = challengeRound;
    map['be the frist like'] = bethefristlike;
    map['days'] = days;
    return map;
  }

}