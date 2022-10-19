import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:nkgroup/src/core/core.dart';
import 'package:nkgroup/src/core/reuseable/bg.dart';

class ReceiverDetailsWaitingPage extends StatelessWidget {
  const ReceiverDetailsWaitingPage({super.key, required this.isApproved});
  final bool isApproved;

  @override
  Widget build(BuildContext context) {
    const colors = Colors.white;
    const styleColor = TextStyle(color: Colors.white);
    return BackgroundWrapper(
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          title: const Text('Receiver Details'),
          leading: IconButton(
            onPressed: () => context.router.pop(),
            icon: const Icon(
              Icons.arrow_back_ios,
              size: 12,
            ),
          ),
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
        body: Padding(
          padding: globalPading(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Visibility(
                  visible: !isApproved,
                  child: Column(
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
                                style: TextStyle(color: colors),
                              ),
                              Text(
                                '11:05:28',
                                style: TextStyle(color: colors),
                              )
                            ],
                          ),
                        ),
                      ),
                      mediumGap(),
                    ],
                  )),
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
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
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
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
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
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
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
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
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
