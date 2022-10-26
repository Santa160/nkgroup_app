import 'package:flutter/material.dart';
import 'package:nkgroup/src/core/core.dart';

class DesktopVoew extends StatelessWidget {
  const DesktopVoew({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      body: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          myDrawer(context),
          mainContain(context),
        ],
      ),
    );
  }

  mainContain(BuildContext context) {
    return Expanded(
        child: Container(
      height: 50,
      color: Colors.white,
      child: Row(
        children: const [
          Text("data"),
          Text("data"),
        ],
      ),
    ));
  }
}
