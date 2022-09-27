// ignore_for_file: unused_import


import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:personal_website/Desktop_subpages/AboutScreen.dart';
import 'package:personal_website/Desktop_subpages/ContactScreen.dart';
import 'package:personal_website/Desktop_subpages/PortfolioScreen.dart';
import 'package:personal_website/models/button_template.dart';
import 'package:personal_website/top_bar.dart';
import 'package:personal_website/utils/font_utils.dart';
import 'package:personal_website/utils/globals.dart';
import 'package:sizer/sizer.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'package:flutter_animated_button/flutter_animated_button.dart';
import 'package:animated_background/animated_background.dart';
import 'package:blurrycontainer/blurrycontainer.dart';
import 'package:delayed_display/delayed_display.dart';
import 'package:transitioner/transitioner.dart';

class Desktop_SplashScreen extends StatefulWidget {
  const Desktop_SplashScreen({super.key});

  @override
  State<Desktop_SplashScreen> createState() => _Desktop_SplashScreenState();
}

class _Desktop_SplashScreenState extends State<Desktop_SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      splash:  LoadingAnimationWidget.inkDrop(color: Colors.black, size: 100),//Text("Loading", style: TextStyle(fontSize: 20.sp, color: Colors.black),),
      nextScreen: DesktopScreen()
    );
  }
}

class DesktopScreen extends StatefulWidget {
  const DesktopScreen({super.key});

  State<DesktopScreen> createState() => _DesktopScreenState();
}

class _DesktopScreenState extends State<DesktopScreen> with SingleTickerProviderStateMixin {
  
  final Key parallaxOne = GlobalKey();
  callback(varPage) {
    page_selector = varPage;
    Transitioner(
      context: context,
      child: DesktopScreen(),
      animation: AnimationType.fadeIn,
      duration: Duration(milliseconds: 500),
      replacement: true,
      curveType: CurveType.ease,
    );
  }
  ParticleOptions particles = const ParticleOptions(
    
    baseColor: Colors.teal,
    spawnOpacity: 0.0,
    opacityChangeRate: 0.25,
    minOpacity: 0.1,
    maxOpacity: 0.4,
    particleCount: 80,
    spawnMaxRadius: 15.0,
    spawnMaxSpeed: 100.0,
    spawnMinSpeed: 30,
    spawnMinRadius: 7.0,
  );
  
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
      if (page_selector == 1) { 
          return Scaffold(
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
                    SizedBox(height: 33.h,),
                    DelayedDisplay(
                      delay: Duration(seconds: initialDelay.inSeconds + 1),
                      child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: 21.w, vertical: 2.h),
                          child: Container(
                            width: 100.w,
                            height: 5.h,
                            child: Row(
                              children: [
                                Button(page: 1, text: "Home", callback: callback, clicked: false),
                                SizedBox(width: 2.w),
                                Button(page: 2, text: "About", callback: callback, clicked: false,),
                                SizedBox(width: 2.w),
                                Button(page: 3, text: "Projects", callback: callback, clicked: false,),
                                SizedBox(width: 2.w),
                                Button(page: 4, text: "Contact", callback: callback, clicked: false,),
                              ],),
                          )//,
                        ),
                    )
                    ],)),),);} 
    else if (page_selector == 2) {return Scaffold(
          body: Container(color: HexColor("#1B1725"), 
            height: 100.h, 
            width: 100.w, 
            alignment: Alignment.center,
            child: AnimatedBackground(
            vsync: this,
            behaviour: RandomParticleBehaviour(options: particles),
            child:Column(
                  children: [  
                    DelayedDisplay(delay: Duration(seconds: initialDelay.inSeconds), child: DesktopAboutScreen()),
                    SizedBox(height: 12.h,),//47
                    Padding(
                        padding: EdgeInsets.symmetric(horizontal: 21.w),
                        child: Container(
                          width: 100.w,
                          height: 5.h,
                          child: Row(
                            children: [
                              Button(page: 1, text: "Home", callback: callback, clicked: false,),
                              SizedBox(width: 2.w),
                              Button(page: 2, text: "About", callback: callback, clicked: true,),
                              SizedBox(width: 2.w),
                              Button(page: 3, text: "Projects", callback: callback, clicked: false,),
                              SizedBox(width: 2.w),
                              Button(page: 4, text: "Contact", callback: callback, clicked: false,),
                            ],),
                        )//,
                      )],)),),);} 
    else if (page_selector == 3) {return Scaffold(
          body: Container(color: HexColor("#1B1725"), 
            height: 100.h, 
            width: 100.w, 
            alignment: Alignment.center,
            child: AnimatedBackground(
            vsync: this,
            behaviour: RandomParticleBehaviour(options: particles),
            child:Column(
                  children: [  
                    DelayedDisplay(delay: Duration(seconds: initialDelay.inSeconds), child: DesktopPortfolioScreen()),
                    SizedBox(height: 2.h,),//47
                    Padding(
                        padding: EdgeInsets.symmetric(horizontal: 21.w,),
                        child: Container(
                          width: 100.w,
                          height: 5.h,
                          child: Row(
                            children: [
                              Button(page: 1, text: "Home", callback: callback, clicked: false,),
                              SizedBox(width: 2.w),
                              Button(page: 2, text: "About", callback: callback, clicked: false,),
                              SizedBox(width: 2.w),
                              Button(page: 3, text: "Projects", callback: callback, clicked: true,),
                              SizedBox(width: 2.w),
                              Button(page: 4, text: "Contact", callback: callback, clicked: false,),
                            ],),
                        )//,
                      )],)),),);}
    else {return Scaffold(
          body: Container(color: HexColor("#1B1725"), 
            height: 100.h, 
            width: 100.w, 
            alignment: Alignment.center,
            child: AnimatedBackground(
            vsync: this,
            behaviour: RandomParticleBehaviour(options: particles),
            child:Column(
                  children: [  
                    //TopBar(),
                    DelayedDisplay(delay: Duration(seconds: initialDelay.inSeconds), child: DesktopContactScreen()),
                    SizedBox(height: 12.h,),//47
                    Padding(
                        padding: EdgeInsets.symmetric(horizontal: 21.w),
                        child: Container(
                          width: 100.w,
                          height: 5.h,
                          child: Row(
                            children: [
                              Button(page: 1, text: "Home", callback: callback, clicked: false,),
                              SizedBox(width: 2.w),
                              Button(page: 2, text: "About", callback: callback, clicked: false,),
                              SizedBox(width: 2.w),
                              Button(page: 3, text: "Projects", callback: callback, clicked: false,),
                              SizedBox(width: 2.w),
                              Button(page: 4, text: "Contact", callback: callback, clicked: true,),
                            ],),
                        )//,
                      )],)),),);}
      }
    );
  }
}



