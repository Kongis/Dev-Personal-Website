// ignore_for_file: prefer_const_constructors
import 'package:google_fonts/google_fonts.dart';
import 'package:personal_website/desktop-screen.dart';
import 'package:sizer/sizer.dart';
import 'package:flutter/material.dart';
import 'layout_builder.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Sizer(
      builder: (context, orientation, deviceType) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Kongis.dev',
          home: ResponsiveLayout()
        );
      },
    );
  }
}