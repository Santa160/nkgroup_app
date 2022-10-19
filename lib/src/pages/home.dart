import 'package:flutter/material.dart';
import 'package:nkgroup/src/core/assets.dart';
import 'package:nkgroup/src/core/gaps.dart';
import 'package:nkgroup/src/core/reuseable/bg.dart';
import 'package:nkgroup/src/core/reuseable/resuable.dart';
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
      drawer: myDrawer(),
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
                      InkWell(
                          onTap: () => showModalBottomSheet(
                                context: context,
                                builder: (context) {
                                  return buttomSheet();
                                },
                              ),
                          child: shareWidget()),
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

  BackgroundWrapper buttomSheet() {
    return BackgroundWrapper(
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: SizedBox(
          height: 200,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Share",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
              smallGap(),
              SizedBox(
                height: 50,
                width: MediaQuery.of(context).size.width,
                child: Row(
                  children: [
                    Expanded(
                      child: RadioListTile(
                        title: const Text(
                          "Add to left",
                          style: TextStyle(color: Colors.white),
                        ),
                        value: true,
                        groupValue: true,
                        onChanged: (value) {},
                      ),
                    ),
                    Expanded(
                      child: RadioListTile(
                        title: const Text(
                          "Add to Right",
                          style: TextStyle(color: Colors.white),
                        ),
                        value: "",
                        groupValue: null,
                        onChanged: (value) {},
                      ),
                    ),
                  ],
                ),
              ),
              mediumGap(),
              Row(
                children: [
                  SizedBox(
                    height: 50,
                    width: 50,
                    child: ClipRRect(
                        borderRadius:
                            const BorderRadius.all(Radius.circular(10)),
                        child: Image.asset(Assets.image.watsap)),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  SizedBox(
                    height: 50,
                    width: 50,
                    child: ClipRRect(
                        borderRadius:
                            const BorderRadius.all(Radius.circular(10)),
                        child: Image.asset(Assets.image.copyLink)),
                  ),
                ],
              ),
              // Row(
              //   children: [
              //     RadioListTile(
              //       title: const Text("Male"),
              //       value: "male",
              //       groupValue: null,
              //       onChanged: (value) {},
              //     ),
              //     RadioListTile(
              //       title: const Text("Female"),
              //       value: "female",
              //       groupValue: null,
              //       onChanged: (value) {},
              //     ),
              //   ],
              // )
            ],
          ),
        ),
      ),
    );
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
