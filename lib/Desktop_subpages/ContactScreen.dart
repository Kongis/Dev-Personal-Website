import 'package:blurrycontainer/blurrycontainer.dart';
import 'package:flutter/material.dart';
import 'package:personal_website/models/button_template.dart';
import 'package:personal_website/utils/font_utils.dart';
import 'package:personal_website/utils/globals.dart';
import 'package:sizer/sizer.dart';


class DesktopContactScreen extends StatelessWidget {
  const DesktopContactScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.transparent, 
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 20.h),
        child: BlurryContainer(
            blur: 20,
            width: 80.w,
            height: 40.h,
            elevation: 0,
            color: Colors.teal.withOpacity(0.2),
            borderRadius: BorderRadius.circular(40),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 1.h),
                  child: Text(contact[0], style: getFont(7.sp, "#FFFFFF"),),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 20.h),
                  child: Container(
                    height: 7.h,
                    width: 70.w,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center, 
                      crossAxisAlignment: CrossAxisAlignment.center, 
                      children: [
                        EmailButton(text: "Email", height: 5, width: 13 ,sizefont: 3),
                        SizedBox(width: 3.w,), 
                        ContactButton(text: "Discord", index: 0, height: 5, width: 13, sizefont: 3),
                        SizedBox(width: 3.w,), 
                        ContactButton(text: "Fiverr", index: 1, height: 5, width: 13, sizefont: 3),
                        SizedBox(width: 3.w,), 
                        ContactButton(text: "GitHub", index: 2, height: 5, width: 13, sizefont: 3)],),
                  ),)
              ],
            ),
          ),
      ),
      );
  }
}