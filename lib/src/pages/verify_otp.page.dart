import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:nkgroup/src/core/core.dart';
import 'package:nkgroup/src/core/reuseable/bg.dart';
import 'package:nkgroup/src/router/router.dart';

class VerifyOtpPage extends StatelessWidget {
  const VerifyOtpPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BackgroundWrapper(
      child: Scaffold(
        appBar: appBar(context, "Verify Phone"),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "OTP sent to +91 987654321",
                style: TextStyle(fontSize: 20, color: Colors.white),
              ),
              mediumGap(),
              kTextField("Enter OTP"),
              smallGap(),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: const [
                  Text(
                    "Resend in 00:15",
                    style: TextStyle(fontSize: 13, color: Colors.white),
                  ),
                ],
              ),
              smallGap(),
              kSubmitButton(context, () {
                showDialog(
                    context: context,
                    builder: (context) => AlertDialog(
                          content: Column(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Icon(
                                Icons.check,
                                color: Colors.green,
                                size: 50,
                              ),
                              smallGap(),
                              const Text(
                                "Congratulations",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold),
                              ),
                              mediumGap(),
                              const Text(
                                "Sign up completed successfully",
                                style: TextStyle(
                                  color: Colors.grey,
                                ),
                              ),
                              smallGap(),
                              const Text(
                                textAlign: TextAlign.center,
                                "Click the proceed button if you are ready to help the community with \$140",
                                style: TextStyle(
                                  color: Colors.grey,
                                ),
                              ),
                              mediumGap(),
                              kSubmitButton(context, () {
                                Navigator.pop(context);
                                context.router.push(const DonationRoute());
                              }, "Okay")
                            ],
                          ),
                        ));
              }, 'Verify')
            ],
          ),
        ),
      ),
    );
  }
}
