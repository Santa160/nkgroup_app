import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:nkgroup/src/core/core.dart';
import 'package:nkgroup/src/core/reuseable/bg.dart';
import 'package:nkgroup/src/router/router.dart';

class ChangePasswordPage extends StatelessWidget {
  const ChangePasswordPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BackgroundWrapper(
        child: Scaffold(
            appBar: appBar(context, 'Change Password'),
            body: Padding(
              padding: globalPading(context),
              child: Column(
                children: [
                  kTextField('Current password'),
                  smallGap(),
                  kTextField('New Password'),
                  smallGap(),
                  kTextField('Retype New Password'),
                  mediumGap(),
                  kSubmitButton(
                      context,
                      () => showDialog(
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
                                    "Success",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  mediumGap(),
                                  smallGap(),
                                  const Text(
                                    textAlign: TextAlign.center,
                                    "Password changed successfully",
                                    style: TextStyle(
                                      color: Colors.grey,
                                    ),
                                  ),
                                  mediumGap(),
                                  kSubmitButton(context, () {
                                    Navigator.pop(context);
                                    context.router.push(const HomeRoute());
                                  }, "Okay")
                                ],
                              ),
                            ),
                          ),
                      "Submit")
                ],
              ),
            )));
  }
}
