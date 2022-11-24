// To parse this JSON data, do
//
//     final WatchList = WatchListFromJson(jsonString);

import 'dart:convert';

List<WatchList> WatchListFromJson(String str) =>
    List<WatchList>.from(json.decode(str).map((x) => WatchList.fromJson(x)));

String WatchListToJson(List<WatchList> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class WatchList {
  WatchList(
      {required this.movie_name,
      required this.movie_date,
      required this.movie_rating,
      required this.movie_watched,
      required this.movie_review});

  String movie_name;
  String movie_date;
  String movie_rating;
  String movie_watched;
  String movie_review;


  factory WatchList.fromJson(Map<String, dynamic> json) => WatchList(
        movie_name: json["fields"]["title"],
        movie_date: json["fields"]["release_date"],
        movie_rating: json["fields"]["rating"],
        movie_watched: json["fields"]["watched"],
        movie_review: json["fields"]["review"],
      );

  Map<String, dynamic> toJson() => {
        "title": movie_name,
        "release_date": movie_date,
        "rating": movie_rating,
        "review": movie_review,
        "movie": movie_watched,
      };
}