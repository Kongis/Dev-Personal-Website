// ignore_for_file: unused_import

import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:personal_website/utils/globals.dart';
import 'package:personal_website/utils/font_utils.dart';
import 'package:sizer/sizer.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'package:flutter_animated_button/flutter_animated_button.dart';
import 'package:animated_background/animated_background.dart';
import 'package:blurrycontainer/blurrycontainer.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:transitioner/transitioner.dart';
import 'package:delayed_display/delayed_display.dart';


class MobileScreen extends StatefulWidget {
  const MobileScreen({super.key});

  @override
  State<MobileScreen> createState() => MobileScreenState();
}

class MobileScreenState extends State<MobileScreen> with TickerProviderStateMixin{
    dynamic selected; 
    late AnimationController _controller;
    late Animation<double> _animation;
    ParticleOptions particles = const ParticleOptions(
    baseColor: Colors.teal,
    spawnOpacity: 0.0,
    opacityChangeRate: 0.25,
    minOpacity: 0.1,
    maxOpacity: 0.4,
    particleCount: 150,
    spawnMaxRadius: 15.0,
    spawnMaxSpeed: 100.0,
    spawnMinSpeed: 30,
    spawnMinRadius: 7.0,
  );
  @override
  void dispose() {
    super.dispose();
  }
  /*final screens = [
    MobileHomeScreen(),
    MobileAboutScreen(),
    MobilePortfolioScreen(),
    MobileContactScreen(),
  ];*/
  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(seconds: 3),
      vsync: this,

    )..repeat(reverse:true);
    _animation = CurvedAnimation(
        parent: _controller,
        curve: Curves.easeIn
    );
  }
  Widget build(BuildContext context) {
    _controller.forward();
    return Sizer(
      builder: (context, orientation, deviceType) {
        return Container(color: HexColor("#1B1725"), 
            height: 100.h, 
            width: 100.w, 
            //alignment: Alignment.center,
            child: AnimatedBackground(
            vsync: this,
            behaviour: RandomParticleBehaviour(options: particles),
            child: Scaffold(
              backgroundColor: Colors.transparent, 
              body: DelayedDisplay(delay: Duration(seconds: initialDelay.inSeconds), child: screens[currentIndex]),
              bottomNavigationBar: SafeArea(
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 2.w, vertical: 2.h),
                  child: GNav(
              rippleColor: Colors.teal.withOpacity(0.2),//Colors.grey[300]!,
              hoverColor: Colors.teal.withOpacity(0.2),//Colors.grey[100]!,
              gap: 5.w,
              activeColor: Colors.white,
              iconSize: 15.sp,
              backgroundColor: Colors.transparent,
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 12),
              duration: Duration(milliseconds: 400),
              tabBackgroundColor: Colors.teal.withOpacity(0.9),//Colors.grey[100]!,
              color: Colors.white,
              tabs: [
                GButton(
                  icon: FontAwesomeIcons.house,
                  text: 'Home',
                  textStyle: getFont(10.sp, "#FFFFFF"),
                ),
                GButton(
                  icon: FontAwesomeIcons.addressCard,
                  text: 'About',
                  textStyle: getFont(10.sp, "#FFFFFF"),
                ),
                GButton(
                  icon: FontAwesomeIcons.folder,
                  text: 'Portfolio',
                  textStyle: getFont(10.sp, "#FFFFFF"),
                ),
                GButton(
                  icon: FontAwesomeIcons.phone,
                  text: 'Contact',
                  textStyle: getFont(10.sp, "#FFFFFF"),
                ),
              ],
              selectedIndex: currentIndex,
              onTabChange: (index) {
                currentIndex = index;
                Transitioner(
                  context: context,
                  child: MobileScreen(),
                  animation: AnimationType.fadeIn,
                  duration: Duration(milliseconds: 500),
                  replacement: true,
                  curveType: CurveType.ease,
                );
                /*setState(() {
                  currentIndex = index;
                  //Navigator.push(context, MaterialPageRoute(builder: (context) => MobileScreen()));
                });*/
              }),
                )
              )
            )
          )
        );
      }
    );
  }
}



/*callback(varPage) {
    setState(() {
      page_selector = varPage;
      
    });*/
//DelayedDisplay(delay: Duration(seconds: initialDelay.inSeconds + 1), child: screens[currentIndex]);
/*setState(() {
                  currentIndex = index;

                  //Navigator.push(context, MaterialPageRoute(builder: (context) => MobileScreen(b)));
                });*/



/*class MobileHomeScreen extends StatelessWidget {
  const MobileHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(color: Colors.red,);
  }
}

class MobileAboutMe extends StatelessWidget {
  const MobileAboutMe({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(color: Colors.pink,);
  }
}

class MobileProjectsScreen extends StatelessWidget {
  const MobileProjectsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}


class MobileContactScreen extends StatelessWidget {
  const MobileContactScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}*/
/*Scaffold(
          //backgroundColor: HexColor("#111340"),
          body: Container(color: HexColor("#1B1725"), 
            height: 100.h, 
            width: 100.w, 
            alignment: Alignment.center,
            child: AnimatedBackground(
            vsync: this,
            behaviour: RandomParticleBehaviour(options: particles),
            child:Column(
                  children: [  
                    TopBar(),
                    SizedBox(height: 18.h,),
                    Padding(
                        padding: EdgeInsets.symmetric(horizontal: 21.w, vertical: 2.h),
                        child: Container(
                          width: 100.w,
                          height: 5.h,
                          //padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 2.h),
                          child: Row(
                            children: [
                              //SizedBox(width: 21.w),
                              //Container(child: getButton("Home", 1, callback: callback)),
                              Button(page: 1, text: "Home", callback: callback, clicked: false),
                              SizedBox(width: 2.w),
                              //Container(child: getButton("About", 2, callback: callback)),
                              Button(page: 2, text: "About", callback: callback, clicked: false,),
                              SizedBox(width: 2.w),
                              Button(page: 3, text: "Projects", callback: callback, clicked: false,),
                              //Container(child: getButton("Project", 3, callback: callback)),
                              SizedBox(width: 2.w),
                              Button(page: 4, text: "Contact", callback: callback, clicked: false,),
                              //Container(child: getButton("Contact", 4, callback: callback),),
                              //SizedBox(width: 21.w)
                            ],),
                        )//,
                      )
                    ],)),),);*/