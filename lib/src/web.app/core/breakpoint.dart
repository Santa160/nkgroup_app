import 'package:flutter/material.dart';

class BreakPoint extends StatelessWidget {
  final Widget mobileSize;
  final Widget tabletSize;
  final Widget desktopSize;

  const BreakPoint(
      {super.key,
      required this.mobileSize,
      required this.tabletSize,
      required this.desktopSize});

  static bool isMobile(BuildContext context) =>
      MediaQuery.of(context).size.width < 650;

  static bool istablet(BuildContext context) =>
      MediaQuery.of(context).size.width < 1100 &&
      MediaQuery.of(context).size.width >= 650;

  static bool isdesktop(BuildContext context) =>
      MediaQuery.of(context).size.width >= 1100;

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    if (size.width >= 1100) {
      return desktopSize;
    } else if (size.width >= 650) {
      return tabletSize;
    } else {
      return mobileSize;
    }
  }
}
