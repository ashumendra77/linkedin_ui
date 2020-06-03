import 'package:flutter/cupertino.dart';

class Linkedin {
  String name;
  String imagurl;
  List activity;
  String occ;
  int time;
  int like;
  int favorate;
  String location;

  Linkedin({
    @required this.activity,
    @required this.name,
    @required this.imagurl,
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
      name: "Walden Parker",
      imagurl: "images/2.png",
      occ: "Designer Product",
      like: 36,
      favorate: 16,
      time: 3,
      location: "San Frencisco, CA"),
  Linkedin(
      activity: ["images/2.jpeg", "images/3.jpeg", "images/4.jpeg"],
      name: "Walden Parker",
      imagurl: "images/2.png",
      occ: "Designer Product",
      like: 36,
      favorate: 16,
      time: 3,
      location: "San Frencisco, CA"),
  Linkedin(
      activity: ["images/2.jpeg", "images/3.jpeg", "images/4.jpeg"],
      name: "Walden Parker",
      imagurl: "images/2.png",
      occ: "Designer Product",
      like: 36,
      favorate: 16,
      time: 3,
      location: "San Frencisco, CA")
];
