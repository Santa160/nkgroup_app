import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:nkgroup/src/router/router.dart';

import '../../core/core.dart';
import '../../core/reuseable/bg.dart';

class ReceiverDetailsPage extends StatelessWidget {
  const ReceiverDetailsPage({super.key});

  @override
  Widget build(BuildContext context) {
    const colors = Colors.white;
    const styleColor = TextStyle(color: Colors.white);
    return BackgroundWrapper(
        child: Scaffold(
      appBar: AppBar(
        title: const Text('Receiver Details'),
        leading: const Icon(
          Icons.arrow_back_ios,
          size: 12,
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Padding(
        padding: globalPading(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            mediumGap(),
            Row(
              children: const [
                Text(
                  'Receiver Name',
                  style: TextStyle(color: colors, fontSize: 20),
                )
              ],
            ),
            smallGap(),
            Row(
              children: const [
                Icon(
                  Icons.phone,
                  color: Colors.white,
                ),
                SizedBox(
                  width: 5,
                ),
                Text(
                  '+91 9366304598',
                  style: styleColor,
                )
              ],
            ),
            smallGap(),
            Row(
              children: const [
                Icon(
                  Icons.payment,
                  color: Colors.white,
                ),
                SizedBox(
                  width: 5,
                ),
                Text(
                  "₹1000/ \$12",
                  style: styleColor,
                ),
              ],
            ),
            mediumGap(),
            const Text(
              'Payment Method',
              style: TextStyle(color: Colors.white, fontSize: 15),
            ),
            smallGap(),
            Container(
              decoration: BoxDecoration(
                color: Colors.white.withOpacity(0.3),
                borderRadius: const BorderRadius.all(
                  Radius.circular(5),
                ),
              ),
              child: DropdownButtonHideUnderline(
                child: DropdownButton(
                    isExpanded: true,
                    items: const [],
                    hint: const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        'State Bank of India',
                        style: styleColor,
                      ),
                    ),
                    onChanged: (value) {}),
              ),
            ),
            mediumGap(),
            RichText(
              text: const TextSpan(
                children: [
                  TextSpan(
                    text: 'Account No',
                    style: TextStyle(color: Colors.white70),
                  ),
                  TextSpan(
                    text: ":",
                  ),
                  TextSpan(
                    text: ' 7899 4566 1321',
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            smallGap(),
            RichText(
              text: const TextSpan(
                children: [
                  TextSpan(
                    text: 'Branch',
                    style: TextStyle(color: Colors.white70),
                  ),
                  TextSpan(
                    text: ":",
                  ),
                  TextSpan(
                    text: ' Porompat',
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            smallGap(),
            RichText(
              text: const TextSpan(
                children: [
                  TextSpan(
                    text: 'Bank Code (IFSC Code)',
                    style: TextStyle(color: Colors.white70),
                  ),
                  TextSpan(
                    text: ":",
                  ),
                  TextSpan(
                    text: 'SBI8944S',
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            smallGap(),
            RichText(
              text: const TextSpan(
                children: [
                  TextSpan(
                    text: 'Contact No',
                    style: TextStyle(color: Colors.white70),
                  ),
                  TextSpan(
                    text: ":",
                  ),
                  TextSpan(
                    text: '+91 0000 000 000',
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            mediumGap(),
            uploadedButton(context, () {
              context.router.push(const PaymentDetailsRoute());
            })
          ],
        ),
      ),
    ));
  }

  SizedBox uploadedButton(BuildContext context, VoidCallback onpress) {
    return SizedBox(
      height: 50,
      width: MediaQuery.of(context).size.width,
      child: ElevatedButton(
        style: ButtonStyle(backgroundColor: MaterialStateProperty.all(dcolor)),
        onPressed: onpress,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Icon(Icons.drive_folder_upload_rounded),
            SizedBox(
              width: 10,
            ),
            Text("Upload receipt"),
          ],
        ),
      ),
    );
  }
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
              Icons.arrow_back_ios,
              size: 20,
              color: Colors.white,
            ),
          ),
          TextSpan(
            text: " ",
          ),
          TextSpan(text: "Receiver Details", style: TextStyle(fontSize: 15)),
        ],
      ),
    ),
  );
}
