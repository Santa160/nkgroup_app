import 'package:flutter/material.dart';
import 'package:nkgroup/src/core/app.config.dart';
import 'package:nkgroup/src/core/assets.dart';
import 'package:nkgroup/src/core/gaps.dart';
import 'package:nkgroup/src/core/reuseable/bg.dart';
import 'package:nkgroup/src/fake%20data/fake_data.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final GlobalKey<ScaffoldState> _key = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return BackgroundWrapper(
        child: Scaffold(
      key: _key,
      drawer: Drawer(
        // Add a ListView to the drawer. This ensures the user can scroll
        // through the options in the drawer if there isn't enough vertical
        // space to fit everything.
        child: BackgroundWrapper(
          child: SafeArea(
            child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      AppConfig.appName,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 32,
                          fontWeight: FontWeight.bold),
                    ),
                    mediumGap(),
                    ...FakeData.drawerlist
                        .map((e) => ListTile(
                              contentPadding: EdgeInsets.zero,
                              title: Text(
                                e["title"],
                                style: const TextStyle(
                                    color: Colors.white,
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold),
                              ),
                              leading: e["icon"],
                            ))
                        .toList()
                  ],
                )),
          ),
        ),
      ),
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
                      shareWidget(),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
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
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold)),
                              ],
                            ),
                          ),
                          IconButton(
                              onPressed: () async {
                                _key.currentState!.openDrawer();
                              },
                              icon: const Icon(
                                Icons.menu,
                                color: Colors.white,
                              ))
                        ],
                      ),
                      smallGap(),
                    ],
                  )),
              Expanded(
                  flex: 8,
                  child: Column(
                    children: [
                      ...FakeData.dashboardData
                          .map((e) => dashBoardCard(e["title"], e["count"]))
                          .toList(),
                    ],
                  )),
            ],
          ),
        ),
      ),
    ));
  }

  Expanded dashBoardCard(String title, String count) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10),
        child: Container(
          decoration: BoxDecoration(
              color: Colors.white.withOpacity(0.2),
              border: Border.all(
                color: Colors.white.withOpacity(0.1),
              ),
              borderRadius: const BorderRadius.all(Radius.circular(20))),
          child: Padding(
            padding: const EdgeInsets.all(15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                    flex: 4,
                    child: SizedBox(
                        width: 100,
                        height: 100,
                        child: Image.asset(Assets.image.img))),
                Expanded(
                  flex: 7,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        textAlign: TextAlign.end,
                        title.toUpperCase(),
                        style: const TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        count,
                        style: const TextStyle(
                            color: Colors.white,
                            fontSize: 35,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
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
