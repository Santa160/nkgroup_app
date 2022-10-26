import 'package:flutter/material.dart';
import 'package:nkgroup/src/core/reuseable/resuable.dart';

class MobileView extends StatelessWidget {
  const MobileView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: myDrawer(context),
        backgroundColor: Colors.blue,
        appBar: AppBar(
          title: const Text("NK group"),
        ),
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: AspectRatio(
                  aspectRatio: 16 / 9,
                  child: Container(
                    color: Colors.red,
                  )),
            ),
          ],
        ));
  }
}
