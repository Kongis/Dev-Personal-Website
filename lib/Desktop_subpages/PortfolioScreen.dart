import 'package:blurrycontainer/blurrycontainer.dart';
import 'package:flutter/material.dart';
import 'package:personal_website/models/models.dart';
import 'package:personal_website/models/projects_card.dart';
import 'package:personal_website/utils/font_utils.dart';
import 'package:personal_website/utils/globals.dart';
import 'package:sizer/sizer.dart';
import 'package:horizontal_list/horizontal_list.dart';

class DesktopPortfolioScreen extends StatelessWidget {
  DesktopPortfolioScreen({super.key});
  //final ScrollController controller = ScrollController();
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.transparent, 
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 20.h),
        child: BlurryContainer(
            blur: 20,
            width: 80.w,
            height: 50.h,
            elevation: 0,
            color: Colors.teal.withOpacity(0.2),
            borderRadius: BorderRadius.circular(40),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  height: 9.h,
                  child: Padding(
                    padding: EdgeInsets.only(top: 1.h),
                    child: Text(portfolio[0], style: getFont(8.sp, "#FFFFFF"),),
                  ),
                ),
                Container(
                  height: 5.h,
                  child: Padding(
                    padding: EdgeInsets.only(left: 4.w, right: 4.w),
                    child: Text(portfolio[1], style: getFont(3.sp, "#FFFFFF"),),
                    ),
                ),
                /*Padding(
                  padding: EdgeInsets.only(top: 2.h),
                  child: HorizontalListView(
                    height: 20.h, 
                    width: double.infinity, 
                    iconNext: Icon(Icons.arrow_forward_ios), // Icon for button next
                    iconPrevious: Icon(Icons.arrow_back_ios),
                    curveAnimation: Curves.bounceIn, //Curve for animation
                    durationAnimation: Duration(milliseconds: 300), //Duration of animation
                    enableManualScroll: true,
                    list: [buildCard(0), buildCard(0),buildCard(0), buildCard(0),buildCard(0), buildCard(0),buildCard(0), buildCard(0)]),
                )*/
              ],
            ),
          ),
      ),
      );
  }
}
