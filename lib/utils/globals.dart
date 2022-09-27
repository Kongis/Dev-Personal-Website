import 'package:flutter/material.dart';
import 'package:personal_website/mobile-screen.dart';


import '../Mobile_subpages/AboutScreen.dart';
import '../Mobile_subpages/ContactScreen.dart';
import '../Mobile_subpages/HomeScreen.dart';
import '../Mobile_subpages/PortfolioScreen.dart';


String LandingPageText1 = "Kongis";
String LandingPageText2 = "Mobile App Developer";
List<String> aboutme = [
  "I am a 17 years old mobile developer at Flutter.",
  "Every project I work on is my business card, so I put maximum emphasis on the quality of processing.",
  "I am a well-organized person, problem solver, independent worker with a high attention to detail.",
  "I offer services in the field of mobile app developing.",
  "If you have any questions, please do not hesitate to contact me.",
];
List<String> portfolio = [
  "Portfolio",
  "My portfolio is empty right now. ",
];
List<String> contact = [
  "Contact",
  "Email"
];

List<Uri> links = [
  Uri.parse("https://discord.com/users/382824111988146177"),
  Uri.parse("https://www.fiverr.com/kongisdev"),
  Uri.parse("https://github.com/Kongis"),
];
String wait = "";
String jejda = "#29c5cd";
int page_selector = 1;
int currentIndex = 0;
final screens = [
    MobileHomeScreen(),
    MobileAboutScreen(),
    MobilePortfolioScreen(),
    MobileContactScreen(),
  ];
final Duration initialDelay = Duration(milliseconds: 500);
