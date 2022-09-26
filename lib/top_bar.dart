import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:personal_website/utils/font_utils.dart';
import 'package:personal_website/utils/globals.dart';
import 'package:delayed_display/delayed_display.dart';
class TopBar extends StatefulWidget {
  const TopBar({super.key});

  @override
  State<TopBar> createState() => _TopBarState();
}

class _TopBarState extends State<TopBar> {
  @override
  Widget build(BuildContext context) {
    return Column(
        children: [
          SizedBox(height: 31.h,),
                      Container(
                          height: 16.h,
                          child: Padding(
                            padding: EdgeInsets.only(),
                            child: DelayedDisplay(
                              delay: Duration(seconds: initialDelay.inSeconds + 1),
                              child: AnimatedTextKit(pause: Duration(seconds: 1), totalRepeatCount: 1, animatedTexts: [
                                  TypewriterAnimatedText(wait, textStyle: getFont(0.sp, "#fdfefe"), speed: Duration(milliseconds: 100)),
                                  TypewriterAnimatedText(LandingPageText1, textStyle: getFont(20.sp, "#fdfefe"), speed: Duration(milliseconds: 100)),
                                  ]),
                            ),
                          ),
                      ),
                      Container(
                        alignment: Alignment.topCenter,
                        height: 10.h,
                        width: 100.w,
                        child: Padding(
                          padding: EdgeInsets.only(right: 3.w, top: 4.h),
                          child: DelayedDisplay(
                            delay: Duration(seconds: initialDelay.inSeconds + 1),
                            child: AnimatedTextKit(pause: Duration(seconds: 2), totalRepeatCount: 1, animatedTexts: [
                              TypewriterAnimatedText(wait, textStyle: getFont(3.sp, "#fdfefe"), speed: Duration(milliseconds: 100)),
                              TypewriterAnimatedText(LandingPageText2, textStyle: getFont(3.sp, "#fdfefe"), speed:Duration(milliseconds: 100))]),
                          ),
                        ),
                      ),
        ],
      );
  }
}