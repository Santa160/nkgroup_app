import 'package:flutter/material.dart';
import 'package:nkgroup/src/core/core.dart';
import 'package:nkgroup/src/core/reuseable/bg.dart';

class PaymentMethodPage extends StatelessWidget {
  const PaymentMethodPage({super.key});

  @override
  Widget build(BuildContext context) {
    // =====================================
    const double size16 = 16;
    const double size25 = 25;
    const colors = Colors.white;
    const double size20 = 20;
    // ========================================

    return BackgroundWrapper(
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          title: const Text(
            'Payment Method',
            style: TextStyle(fontSize: size20, fontWeight: FontWeight.w800),
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
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset('assets/payment1.png'),
                ],
              ),
              mediumGap(),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: const [
                  Text(
                    'You have not yet updated',
                    style: TextStyle(
                        fontSize: size25,
                        color: colors,
                        fontWeight: FontWeight.w800),
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: const [
                  Text(
                    'your',
                    style: TextStyle(
                        fontSize: size25,
                        color: colors,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    'Payment Method',
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                  )
                ],
              ),
              smallGap(),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: const [
                  Flexible(
                    child: Text(
                      'Please set your payment methods to receive donation from the donors.',
                      style: TextStyle(color: colors, fontSize: size16),
                    ),
                  ),
                ],
              ),
              mediumGap(),
              kSubmitButton(context, () {})
            ],
          ),
        ),
      ),
    );
  }
}
