import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:nkgroup/src/core/core.dart';
import 'package:nkgroup/src/core/reuseable/bg.dart';
import 'package:nkgroup/src/fake%20data/fake_data.dart';
import 'package:nkgroup/src/router/app.router.gr.dart';

class HelpPage extends StatelessWidget {
  const HelpPage({super.key, required this.appBarTile});
  final String appBarTile;

  @override
  Widget build(BuildContext context) {
    return BackgroundWrapper(
      child: Scaffold(
        appBar: appBar(context, appBarTile),
        body: Padding(
          padding: globalPading(),
          child: ListView.separated(
            separatorBuilder: (context, index) => smallGap(),
            itemCount: FakeData.helpGiven.length,
            itemBuilder: (context, index) {
              var data = FakeData.helpGiven;
              return InkWell(
                onTap: () => context.router.push(const HelpGivenDetailsRoute()),
                child: helpsCard(
                    context: context,
                    amount: data[index]['amount'],
                    dateTime: data[index]['date_time'],
                    senderName: data[index]['name'],
                    status: data[index]['status']),
              );
            },
          ),
        ),
      ),
    );
  }

  Container helpsCard(
      {required BuildContext context,
      required String senderName,
      required String amount,
      required String dateTime,
      required String status}) {
    return Container(
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.3),
        borderRadius: const BorderRadius.all(
          Radius.circular(10),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              senderName,
              style: const TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            ),
            smallGap(),
            Row(
              children: [
                Expanded(
                    flex: 7,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        RichText(
                          text: TextSpan(
                            children: [
                              const WidgetSpan(
                                alignment: PlaceholderAlignment.middle,
                                child: Icon(
                                  Icons.money,
                                  size: 15,
                                  color: Colors.white,
                                ),
                              ),
                              const TextSpan(
                                text: " ",
                              ),
                              TextSpan(
                                text: amount,
                                style: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 12,
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(height: 5),
                        RichText(
                          text: TextSpan(
                            children: [
                              const WidgetSpan(
                                alignment: PlaceholderAlignment.middle,
                                child: Icon(
                                  Icons.money,
                                  size: 15,
                                  color: Colors.white,
                                ),
                              ),
                              const TextSpan(
                                text: " ",
                              ),
                              TextSpan(
                                text: dateTime,
                                style: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 12,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    )),
                Expanded(
                    flex: 3,
                    child: ElevatedButton(
                        style: ButtonStyle(
                            shape: MaterialStateProperty.all<
                                RoundedRectangleBorder>(RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                            )),
                            backgroundColor: MaterialStateProperty.all(
                                status == 'Approved' ? bcolor : dcolor)),
                        onPressed: null,
                        child: Text(
                          status,
                          style: const TextStyle(
                            color: Colors.white,
                          ),
                        )))
              ],
            ),
            // const Text(
            //   "\$10/₹779",
            //   style: TextStyle(
            //     color: Colors.white,
            //     fontSize: 15,
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}
