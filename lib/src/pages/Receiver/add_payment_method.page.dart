import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:nkgroup/src/core/core.dart';
import 'package:nkgroup/src/core/reuseable/bg.dart';
import 'package:nkgroup/src/router/router.dart';

class AddPaymentMethodPage extends StatelessWidget {
  const AddPaymentMethodPage({super.key});

  @override
  Widget build(BuildContext context) {
    // =====================================

    const colors = Colors.white;
    const double size20 = 20;
    const double size12 = 12;
    const double size15 = 15;
    smallWidth10() => const SizedBox(width: 10);
    smallWidth15() => const SizedBox(width: 27);

    // ========================================
    return BackgroundWrapper(
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          title: const Text(
            'Payment Setup',
            style: TextStyle(fontSize: size20, fontWeight: FontWeight.w800),
          ),
          leading: IconButton(
            onPressed: () {
              context.router.pop();
            },
            icon: const Icon(
              Icons.arrow_back_ios,
              size: size12,
            ),
          ),
          toolbarHeight: 100,
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(30, 0, 30, 30),
            child: Column(
              children: [
                Container(
                  height: 70,
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
                      children: [
                        const Icon(
                          Icons.timer,
                          color: colors,
                        ),
                        smallWidth10(),
                        const Flexible(
                          child: Text(
                            'Payment account name must be same as your registered name',
                            style: TextStyle(color: colors, fontSize: size15),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                mediumGap(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.asset('assets/Group25.png'),
                    Image.asset('assets/Group27.png'),
                    Image.asset('assets/Group28.png')
                  ],
                ),
                smallGap(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Image.asset('assets/Group29.png'),
                    smallWidth15(),
                    Image.asset('assets/Group46.png'),
                    // Image.asset('assets/Group28.png')
                  ],
                ),
                mediumGap(),
                kTextField('Bank name'),
                smallGap(),
                kTextField('Account number'),
                smallGap(),
                kTextField(
                  'Bank code (IFSC Code)',
                ),
                smallGap(),
                kTextField('Branch name'),
                smallGap(),
                kTextField('Contact number'),
                mediumGap(),
                uploadedButton(
                    context, () => context.router.push(const HomeRoute()))
              ],
            ),
          ),
        ),
      ),
    );
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
            Icon(Icons.save),
            SizedBox(
              width: 10,
            ),
            Text("Save details"),
          ],
        ),
      ),
    );
  }
}
