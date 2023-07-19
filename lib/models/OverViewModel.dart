
class OverViewModel {

  AboutSeries? aboutseries;
  String? seriesname;
  String? coachesnames;
  String? imageUrl;

  OverViewModel({
      this.aboutseries, 
      this.seriesname, 
      this.coachesnames, 
      this.imageUrl,});

  OverViewModel.fromJson(dynamic json) {
    imageUrl = json['imageUrl'];
    seriesname = json['series name'];
    coachesnames = json['coaches names'];
    aboutseries = json['aboutseries'] != null ? AboutSeries.fromJson(json['aboutseries']) : null;
  }


  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['imageUrl'] = imageUrl;
    map['series name'] = seriesname;
    map['coaches names'] = coachesnames;
    if (imageUrl != null) {
      map['aboutseries'] = aboutseries?.toJson();
    }
    return map;
  }

}

class AboutSeries {

  String? text;
  String? profilepic;
  String? series;
  String? coacheprofle;
  String? videoUrl;

  AboutSeries({
      this.text, 
      this.profilepic, 
      this.series, 
      this.coacheprofle, 
      this.videoUrl,});

  AboutSeries.fromJson(dynamic json) {
    text = json['text'];
    profilepic = json['profile pic'];
    series = json['series'];
    coacheprofle = json['coache profle'];
    videoUrl = json['videoUrl'];
  }

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['text'] = text;
    map['profile pic'] = profilepic;
    map['series'] = series;
    map['coache profle'] = coacheprofle;
    map['videoUrl'] = videoUrl;
    return map;
  }

}