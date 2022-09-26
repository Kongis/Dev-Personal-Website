import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:personal_website/utils/font_utils.dart';
import 'package:personal_website/utils/globals.dart';
class MobileHomeScreen extends StatelessWidget {
  const MobileHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 40.h,),
                    Padding(
                      padding: EdgeInsets.only(left: 7.w),
                      child: Container(
                          height: 15.h,
                          child: AnimatedTextKit(pause: Duration(seconds: 1), totalRepeatCount: 1, animatedTexts: [
                              TypewriterAnimatedText(wait, textStyle: getFont(0.sp, "#fdfefe"), speed: Duration(milliseconds: 100)),
                              TypewriterAnimatedText(LandingPageText1, textStyle: getFont(45.sp, "#fdfefe"), speed: Duration(milliseconds: 100)),
                              ]),
                      ),
                    ),
                    //SizedBox(height: 0.h),
                    Container(
                      alignment: Alignment.topCenter,
                      height: 10.h,
                      width: 100.w,
                      child: Padding(
                        padding: EdgeInsets.only(right: 1.w, bottom: 5.h),
                        child: AnimatedTextKit(pause: Duration(seconds: 2), totalRepeatCount: 1, animatedTexts: [
                          TypewriterAnimatedText(wait, textStyle: getFont(3.sp, "#fdfefe"), speed: Duration(milliseconds: 100)),
                          TypewriterAnimatedText(LandingPageText2, textStyle: getFont(10.sp, "#fdfefe"), speed:Duration(milliseconds: 100))]),
                      ),
                    ),
      ],
    );
  }
}

