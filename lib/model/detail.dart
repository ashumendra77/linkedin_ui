import 'package:flutter/cupertino.dart';

class Linkedin {
  String name;
  String imagurl;
  List activity;
  String occ;
  int time;
  String bodyUrl;
  int like;
  int favorate;
  String location;

  Linkedin({
    @required this.activity,
    @required this.name,
    @required this.imagurl,
    @required this.bodyUrl,
    @required this.occ,
    @required this.like,
    @required this.favorate,
    @required this.time,
    @required this.location,
  });
}

List<Linkedin> linked = [
  Linkedin(
      activity: ["images/2.jpeg", "images/3.jpeg", "images/4.jpeg"],
      name: "Jacob Parker",
      imagurl: "images/3.jpeg",
      occ: "Designer Product",
      bodyUrl: "images/5.jpeg",
      like: 39,
      favorate: 26,
      time: 2,
      location: "San Frencisco, CA"),
  Linkedin(
      activity: ["images/2.jpeg", "images/3.jpeg", "images/4.jpeg"],
      name: "Walden Parker",
      imagurl: "images/4.jpeg",
      occ: "Designer Product",
      bodyUrl: "images/a1.jpeg",
      like: 46,
      favorate: 36,
      time: 3,
      location: "Italy, CA"),
  Linkedin(
      activity: ["images/2.jpeg", "images/3.jpeg", "images/4.jpeg"],
      name: "Disel Leon",
      imagurl: "images/2.jpeg",
      occ: "Designer Product",
      bodyUrl: "images/a2.jpeg",
      like: 26,
      favorate: 56,
      time: 1,
      location: "Spain, CA")
];
