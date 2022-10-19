import 'package:flutter/material.dart';

class BackgroundWrapper extends StatelessWidget {
  const BackgroundWrapper({
    Key? key,
    required this.child,
  }) : super(key: key);
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: const BoxDecoration(
            gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomLeft,
          colors: [
            Color(0xff49A078),
            Color(0xff216869),
          ],
        )),
        child: child);
  }
}
