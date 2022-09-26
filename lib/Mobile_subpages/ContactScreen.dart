import 'package:blurrycontainer/blurrycontainer.dart';
import 'package:flutter/material.dart';
import 'package:personal_website/models/button_template.dart';
import 'package:personal_website/utils/font_utils.dart';
import 'package:personal_website/utils/globals.dart';
import 'package:sizer/sizer.dart';

class MobileContactScreen extends StatelessWidget {
  const MobileContactScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.transparent, 
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 20.h),
        child: BlurryContainer(
            blur: 20,
            width: 80.w,
            height: 60.h,
            elevation: 0,
            color: Colors.teal.withOpacity(0.2),
            borderRadius: BorderRadius.circular(40),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 1.h),
                  child: Container(height: 6.h, child: Text(contact[0], style: getFont(20.sp, "#FFFFFF"),)),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16.w),
                  child: Container(
                    height: 40.h,
                    width: 100.w,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center, 
                      crossAxisAlignment: CrossAxisAlignment.start, 
                      children: [
                        EmailButton(text: "Email", height: 6, width: 44, sizefont: 9),
                        SizedBox(height: 3.h,), 
                        ContactButton(text: "Discord", index: 0, height: 6, width: 44, sizefont: 9),
                        SizedBox(height: 3.h,), 
                        ContactButton(text: "Fiverr", index: 1, height: 6, width: 44, sizefont: 9),
                        SizedBox(height: 3.h,), 
                        ContactButton(text: "GitHub", index: 2, height: 6, width: 44, sizefont: 9)],),
                  ),)
              ],
            ),
          ),
      ),
      );
  }
}