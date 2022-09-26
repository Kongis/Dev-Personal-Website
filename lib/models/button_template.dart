import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_animated_button/flutter_animated_button.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:personal_website/desktop-screen.dart';
import 'package:personal_website/main.dart';
import 'package:personal_website/utils/font_utils.dart';
import 'package:personal_website/utils/globals.dart';
import 'package:sizer/sizer.dart';
import 'package:clipboard/clipboard.dart';
import 'package:animated_snack_bar/animated_snack_bar.dart';
import 'package:url_launcher/url_launcher.dart';

class Button extends StatelessWidget {
  final int page;
  final Function callback;
  String text;
  bool clicked;
  Button({required this.page, required this.text, required this.clicked,  required this.callback});

  @override
  Widget build(BuildContext context) {
    return AnimatedButton(
              animatedOn: AnimatedOn.onHover,
              onPress: (() {
                callback(page);
              }),
              height: 5.h,
              width: 13.w,
              text: text,
              isReverse: true,
              selectedTextColor: Colors.white,
              transitionType: TransitionType.LEFT_TO_RIGHT,
              textStyle: getFont(3.sp,  "#fdfefe"),
              backgroundColor: clicked == true ? Colors.teal : Colors.transparent,
              selectedBackgroundColor: clicked == true ? Colors.transparent : Colors.teal,//HexColor("#29c5cd"),
              borderColor: Colors.teal,//HexColor("#29c5cd"),//Colors.white,
              borderRadius: 50,
              borderWidth: 0.05.w,
            );
  }
}

//For Future
/*class ProjectButton extends StatelessWidget {
  String text;
  ProjectButton({required this.text});

  @override
  Widget build(BuildContext context) {
    return AnimatedButton(
              animatedOn: AnimatedOn.onHover,
              onPress: (() {
              }),
              height: 5.h,
              width: 13.w,
              text: text,
              isReverse: true,
              selectedTextColor: Colors.white,
              transitionType: TransitionType.LEFT_TO_RIGHT,
              textStyle: getFont(3.sp,  "#fdfefe"),
              backgroundColor: Colors.teal,
              selectedBackgroundColor: Colors.teal,//HexColor("#29c5cd"),
              borderColor: Colors.teal,//HexColor("#29c5cd"),//Colors.white,
              borderRadius: 50,
              borderWidth: 0.05.w,
            );
  }
}*/

class ContactButton extends StatelessWidget {
  String text;
  int index;
  int height;
  int width;
  int sizefont;
  ContactButton({required this.text, required this.index, required this.height, required this.width, required this.sizefont});

  @override
  Widget build(BuildContext context) {
    return AnimatedButton(
              animatedOn: AnimatedOn.onHover,
              onPress: (() {
                launchUrl(links[index]);
              }),
              height: height.h,
              width: width.w,
              text: text,
              isReverse: true,
              selectedTextColor: Colors.white,
              transitionType: TransitionType.LEFT_TO_RIGHT,
              textStyle: getFont(sizefont.sp,  "#fdfefe"),
              backgroundColor: Colors.teal,
              selectedBackgroundColor: Colors.teal,//HexColor("#29c5cd"),
              borderColor: Colors.teal,//HexColor("#29c5cd"),//Colors.white,
              borderRadius: 50,
              borderWidth: 0.05.w,
            );
  }
}

class EmailButton extends StatelessWidget {
  String text;
  int height;
  int width;
  int sizefont;
  EmailButton({required this.text, required this.height, required this.width, required this.sizefont});

  @override
  Widget build(BuildContext context) {
    return AnimatedButton(
              animatedOn: AnimatedOn.onHover,
              onPress: (() {
                FlutterClipboard.copy("kongis.dev@pm.me").then((value) => null);
                AnimatedSnackBar.material(
                  'Copied to clipboard',
                  type: AnimatedSnackBarType.success,).show(context);
              }),
              height: height.h,
              width: width.w,
              text: text,
              isReverse: true,
              selectedTextColor: Colors.white,
              transitionType: TransitionType.LEFT_TO_RIGHT,
              textStyle: getFont(sizefont.sp,  "#fdfefe"),
              backgroundColor: Colors.teal,
              selectedBackgroundColor: Colors.teal,//HexColor("#29c5cd"),
              borderColor: Colors.teal,//HexColor("#29c5cd"),//Colors.white,
              borderRadius: 50,
              borderWidth: 0.05.w,
            );
  }
}