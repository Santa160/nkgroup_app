import 'package:flutter/material.dart';
import 'package:nkgroup/src/core/core.dart';
import 'package:nkgroup/src/core/reuseable/bg.dart';

class DonationPage extends StatelessWidget {
  const DonationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BackgroundWrapper(
      child: Scaffold(
        appBar: appBar(context, 'Reciever\'s Details '),
        backgroundColor: Colors.transparent,
        body: Padding(
          padding: globalPading(),
          child: Column(
            children: [
              const Text(
                "Please help the following community member to confirm your registration",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                    color: Colors.white),
              ),
              mediumGap(),
              recieversCard(
                  true,
                  const Icon(
                    Icons.punch_clock,
                    color: Colors.white,
                  ),
                  () {}),
              smallGap(),
              recieversCard(
                  true,
                  const Icon(
                    Icons.check,
                    color: Colors.white,
                  ),
                  () {}),
              smallGap(),
              recieversCard2(() {})
            ],
          ),
        ),
      ),
    );
  }

  InkWell recieversCard(bool status, Icon icon, VoidCallback onPress) {
    return InkWell(
      onTap: onPress,
      child: Container(
        height: 100,
        decoration: BoxDecoration(
          color: Colors.white.withOpacity(0.3),
          borderRadius: const BorderRadius.all(
            Radius.circular(5),
          ),
        ),
        child: Center(
          child: ListTile(
            title: const Text(
              "Receiver Name",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.bold),
            ),
            subtitle: const Text(
              "Amount: ₹ 1000/\$12",
              style:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
            ),
            trailing: status
                ? RichText(
                    text: TextSpan(
                      children: [
                        WidgetSpan(
                            alignment: PlaceholderAlignment.middle,
                            child: icon),
                        const TextSpan(text: ' '),
                        const TextSpan(
                            style: TextStyle(fontSize: 12),
                            text: 'Approval Pending')
                      ],
                    ),
                  )
                : const Text(''),
          ),
        ),
      ),
    );
  }

  recieversCard2(VoidCallback onPress) {
    return InkWell(
      onTap: onPress,
      child: Container(
        height: 100,
        decoration: BoxDecoration(
          color: Colors.white.withOpacity(0.3),
          borderRadius: const BorderRadius.all(
            Radius.circular(5),
          ),
        ),
        child: const Center(
          child: ListTile(
            title: Text(
              "Receiver Name",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.bold),
            ),
            subtitle: Text(
              "Amount: ₹ 1000/\$12",
              style:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
            ),
          ),
        ),
      ),
    );
  }
}
