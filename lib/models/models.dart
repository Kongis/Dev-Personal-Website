import 'package:flutter/material.dart';

class Projects {
  String title;
  String subtitle;
  String image;
  Projects({
      required this.title,
      required this.subtitle,
      required this.image,
  });
}

List<Projects> projectdata = [
  Projects(title: "Test", subtitle: "this is a test", image: "image")
];
