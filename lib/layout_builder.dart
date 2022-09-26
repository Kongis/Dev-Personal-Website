import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'mobile-screen.dart';
import 'desktop-screen.dart';
class ResponsiveLayout extends StatelessWidget {
  const ResponsiveLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Sizer(
      builder: (context, orientation, deviceType) {
        if (100.w < 600) {
          return MobileScreen();
        } else {
          return DesktopScreen();
        }
      }
      );
  }
}