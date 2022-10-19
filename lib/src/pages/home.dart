import 'package:flutter/material.dart';
import 'package:nkgroup/src/core/gaps.dart';
import 'package:nkgroup/src/core/reuseable/bg.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return BackgroundWrapper(
        child: Scaffold(
      backgroundColor: Colors.transparent,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                flex: 2,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        shareWidget(),
                        IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              Icons.menu,
                              color: Colors.white,
                            ))
                      ],
                    ),
                    RichText(
                      text: TextSpan(
                        children: [
                          const TextSpan(
                            text: "Hello",
                          ),
                          const TextSpan(
                            text: "\n",
                          ),
                          TextSpan(
                              text: "UserName".toUpperCase(),
                              style: const TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold)),
                        ],
                      ),
                    ),
                    smallGap(),
                  ],
                ),
              ),
              Expanded(
                  flex: 8,
                  child: Column(
                    children: [
                      Expanded(
                        child: Container(
                          color: Colors.red.withOpacity(0.2),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          color: Colors.green.withOpacity(0.2),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          color: Colors.blue.withOpacity(0.2),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          color: Colors.orange.withOpacity(0.2),
                        ),
                      ),
                    ],
                  )),
            ],
          ),
        ),
      ),
    ));
  }

  Padding shareWidget() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: RichText(
        text: const TextSpan(
          children: [
            WidgetSpan(
              alignment: PlaceholderAlignment.middle,
              child: Icon(
                Icons.share,
                size: 20,
                color: Colors.white,
              ),
            ),
            TextSpan(
              text: " ",
            ),
            TextSpan(
              text: "Sponsored No",
            ),
          ],
        ),
      ),
    );
  }
}
