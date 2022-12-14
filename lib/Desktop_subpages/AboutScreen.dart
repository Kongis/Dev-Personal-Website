import 'package:blurrycontainer/blurrycontainer.dart';
import 'package:flutter/material.dart';
import 'package:personal_website/utils/font_utils.dart';
import 'package:sizer/sizer.dart';
import "package:personal_website/utils/globals.dart";


class DesktopAboutScreen extends StatelessWidget {
  const DesktopAboutScreen({super.key});

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
                  Container(
                    height: 10.h,
                    child: Padding(
                      padding: EdgeInsets.only(top: 2.h),
                      child: Text("Hi there", style: getFont(8.sp, "#FFFFFF"),),
                    ),
                  ),
                  Container(
                    height: 4.h,
                    child: Padding(
                      padding: EdgeInsets.only(top: 1.h, left: 4.w, right: 4.w),
                      child: Text(aboutme[0], style: getFont(3.sp , "#FFFFFF"),),
                      ),
                  ),
                  Container(
                    height: 4.h,
                    child: Padding(
                      padding: EdgeInsets.only(left: 4.w, right: 4.w),
                      child: Text(aboutme[1], style: getFont(3.sp , "#FFFFFF"),),
                      ),
                  ),
                  Container(
                    height: 4.h,
                    child: Padding(
                      padding: EdgeInsets.only(left: 4.w, right: 4.w),
                      child: Text(aboutme[2], style: getFont(3.sp , "#FFFFFF"),),
                      ),
                  ),
                  Container(
                    height: 4.h,
                    child: Padding(
                      padding: EdgeInsets.only(left: 4.w, right: 4.w),
                      child: Text(aboutme[3], style: getFont(3.sp , "#FFFFFF"),),
                      ),
                  ),
                  Container(
                    height: 4.h,
                    child: Padding(
                      padding: EdgeInsets.only(left: 4.w, right: 4.w),
                      child: Text(aboutme[4], style: getFont(3.sp , "#FFFFFF"),),
                      ),
                  ),
                ],
              ),
            ),
        ),
      );
  }
}