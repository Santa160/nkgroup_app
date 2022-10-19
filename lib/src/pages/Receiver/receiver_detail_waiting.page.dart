import 'package:flutter/material.dart';
import 'package:nkgroup/src/core/core.dart';
import 'package:nkgroup/src/core/reuseable/bg.dart';

class ReceiverDetailsWaiting extends StatelessWidget {
  const ReceiverDetailsWaiting({super.key});

  @override
  Widget build(BuildContext context) {
    // ===================================
    const colors = Colors.white;
    const double size20 = 20;
    const double size28 = 28;
    const double size16 = 16;
    const double size18 = 18;
    const double size15 = 15;
    const color70 = Colors.white70;

    const fontWeight800 = FontWeight.w800;
    const styleColor = TextStyle(color: Colors.white);

    // =======================================
    return BackgroundWrapper(
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          title: const Text(
            'Receiver Details',
            style: TextStyle(fontSize: size20, fontWeight: fontWeight800),
          ),
          leading: const Icon(
            Icons.arrow_back_ios,
            size: 12,
          ),
          backgroundColor: Colors.transparent,
          elevation: 0,
          toolbarHeight: 100,
        ),
        body: Padding(
          padding: globalPading(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              mediumGap(),
              Container(
                height: 38,
                decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.3),
                  borderRadius: const BorderRadius.all(
                    Radius.circular(5),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Icon(
                        Icons.timer,
                        color: colors,
                      ),
                      Text(
                        'Waiting for Approval',
                        style: TextStyle(color: colors, fontSize: size15),
                      ),
                      Text(
                        '11:05:28',
                        style: TextStyle(color: colors, fontSize: size15),
                      )
                    ],
                  ),
                ),
              ),
              mediumGap(),
              Row(
                children: const [
                  Text(
                    'Receiver Name',
                    style: TextStyle(
                        color: colors,
                        fontSize: size28,
                        fontWeight: fontWeight800),
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
                    style: TextStyle(fontSize: size16, color: colors),
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
                    style: TextStyle(fontSize: size16, color: colors),
                  ),
                ],
              ),
              mediumGap(),
              const Text(
                'Payment Method',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: size18,
                    fontWeight: fontWeight800),
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
                      style: TextStyle(color: color70, fontSize: size16),
                    ),
                    TextSpan(
                      text: ":",
                    ),
                    TextSpan(
                      text: ' 7899 4566 1321',
                      style: TextStyle(
                          fontSize: size16, fontWeight: FontWeight.bold),
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
                      style: TextStyle(color: color70, fontSize: size16),
                    ),
                    TextSpan(
                      text: ":",
                    ),
                    TextSpan(
                      text: ' Porompat',
                      style: TextStyle(
                          fontSize: size16, fontWeight: FontWeight.bold),
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
                      style: TextStyle(color: color70, fontSize: size16),
                    ),
                    TextSpan(
                      text: ":",
                    ),
                    TextSpan(
                      text: 'SBI8944S',
                      style: TextStyle(
                          fontSize: size16, fontWeight: FontWeight.bold),
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
                      style: TextStyle(color: color70, fontSize: size16),
                    ),
                    TextSpan(
                      text: ":",
                    ),
                    TextSpan(
                      text: '+91 0000 000 000',
                      style: TextStyle(
                          fontSize: size16, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
