import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:sizer/sizer.dart';
TextStyle getFont(double size, String color) {
  return GoogleFonts.montserrat(
      textStyle: TextStyle(fontSize: size, color: HexColor(color), letterSpacing: 1));
}

//inconsolata
