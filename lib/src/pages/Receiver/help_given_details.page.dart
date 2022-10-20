import 'package:flutter/material.dart';
import 'package:nkgroup/src/core/core.dart';
import 'package:nkgroup/src/core/reuseable/bg.dart';

class HelpGivenDetailsPage extends StatelessWidget {
  const HelpGivenDetailsPage({super.key});

  @override
  Widget build(BuildContext context) {
    // =====================================
    const double size16 = 16;
    const double size25 = 25;
    const colors = Colors.white;
    const double size20 = 20;
    const double size12 = 12;
    const double size15 = 15;
    const fontWeight800 = FontWeight.w800;
    const fontWeight600 = FontWeight.w600;
    const fontWeightBold = FontWeight.bold;
    smallWidth10() => const SizedBox(width: 10);
    smallWidth15() => const SizedBox(width: 27);

    // ========================================
    return BackgroundWrapper(
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          title: const Text(
            'Sender Details',
            style: TextStyle(fontSize: size20, fontWeight: FontWeight.w800),
          ),
          leading: const Icon(
            Icons.arrow_back_ios,
            size: size12,
          ),
          // toolbarHeight: 100,
          elevation: 0,
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(30, 0, 30, 30),
            child: Column(
              children: [
                mediumGap(),
                _rowBuild(
                  'Sender Name',
                  size20,
                  fontWeight600,
                  colors,
                ),
                smallGap(),
                _rowBuild('Amount: \$10/₹779', size16, fontWeightBold, colors),
                smallGap(),
                _rowBuild('Transaction on: 22:05:25, 30th March 2022', size16,
                    fontWeightBold, colors),
                smallGap(),
                _rowBuild('Type of plan: Easy Level Help', size16,
                    fontWeightBold, colors),
                smallGap(),
                _rowBuild('M.O.P.: State Bank of India', size16, fontWeightBold,
                    colors),
                smallGap(),
                _rowBuild('Cause: Donation', size16, fontWeightBold, colors),
                smallGap(),
                _rowBuild('Status: Approved', size16, fontWeightBold, colors),
                smallGap(),
                _rowBuild('Receipt:', size16, fontWeightBold, colors),
                mediumGap(),
                Image.asset('assets/EAQDhhiU8AIRMbD1.png')
              ],
            ),
          ),
        ),
      ),
    );
  }
}

Row _rowBuild(String text, size, fontWeight, colors) {
  return Row(
    children: [
      Text(
        text,
        style: TextStyle(color: colors, fontSize: size, fontWeight: fontWeight),
      )
    ],
  );
}
