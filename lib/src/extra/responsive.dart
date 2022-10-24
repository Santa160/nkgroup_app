import 'package:flutter/material.dart';

enum DeviceType { phone, tablet }

class Responsive extends StatelessWidget {
  final Widget mobile;
  final Widget tablet;
  final Widget web;

  const Responsive(
      {super.key,
      required this.mobile,
      required this.tablet,
      required this.web});

  static bool isMobile(BuildContext context) =>
      MediaQuery.of(context).size.width < 650;

  static bool istablet(BuildContext context) =>
      MediaQuery.of(context).size.width < 1100 &&
      MediaQuery.of(context).size.width >= 650;

  static bool isdesktop(BuildContext context) =>
      MediaQuery.of(context).size.width >= 1100;

  @override
  Widget build(BuildContext context) {
    var platform = Theme.of(context).platform;

    if (platform == TargetPlatform.android) {
      if (isMobile(context)) {
        return mobile;
      } else {
        return tablet;
      }
    } else if (platform == TargetPlatform.iOS) {
      if (isMobile(context)) {
        return mobile;
      } else {
        return tablet;
      }
    } else {
      return web;
    }

    // if (size.width >= 1100) {
    //   return desktop;
    // } else if (size.width >= 650) {
    //   return tablet;
    // } else {
    //   return mobile;
    // }
  }
}
