import 'package:flutter/material.dart';
import 'package:nkgroup/src/core/core.dart';
import 'package:nkgroup/src/core/reuseable/bg.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    final w = MediaQuery.of(context).size.width;
    final h = MediaQuery.of(context).size.height;
    final textstyle = Theme.of(context).textTheme;

    return BackgroundWrapper(
        child: Scaffold(
            appBar: appBar(context, "Profile"),
            body: Padding(
              padding: globalPading(),
              child: Column(
                children: [
                  SizedBox(
                    width: w,
                    child: Row(
                      children: [
                        Expanded(
                          flex: 3,
                          child: Container(
                            height: 100,
                            width: 100,
                            decoration: const BoxDecoration(
                                color: Colors.white,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(100))),
                            child: Center(
                                child: Text(
                              "SM",
                              style: textstyle.titleLarge!
                                  .copyWith(fontSize: 50, color: bcolor),
                            )),
                          ),
                        ),
                        Expanded(
                          flex: 7,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Santa Mayengbam",
                                  style: textstyle.titleMedium,
                                ),
                                Text(
                                  "Referral No: 12346587",
                                  style: textstyle.bodySmall,
                                ),
                                smallGap(),
                                iconText(textstyle,
                                    icon: Icons.call, text: '+910987654321'),
                                iconText(textstyle,
                                    icon: Icons.mail,
                                    text: 'rajkumarjohndoe@gmail.com'),
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            )));
  }

  RichText iconText(TextTheme textstyle,
      {required String text, required IconData icon}) {
    return RichText(
        text: TextSpan(children: [
      WidgetSpan(
        alignment: PlaceholderAlignment.middle,
        child: Icon(
          icon,
          size: 15,
          color: Colors.white,
        ),
      ),
      const TextSpan(text: " "),
      TextSpan(text: text, style: textstyle.bodySmall)
    ]));
  }
}
