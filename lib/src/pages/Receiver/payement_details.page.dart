import 'package:flutter/material.dart';
import 'package:nkgroup/src/core/reuseable/bg.dart';

import '../../core/core.dart';

class PaymentDetailsPage extends StatelessWidget {
  const PaymentDetailsPage({super.key});

  @override
  Widget build(BuildContext context) {
    // ====================================
    const colorStyle = Colors.white;
    const double size18 = 18;
    const double size16 = 16;
    const double size14 = 14;
    const double size20 = 20;
    // =======================================
    return BackgroundWrapper(
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          title: const Text(
            'Payment Details',
            style: TextStyle(fontSize: size20, fontWeight: FontWeight.w800),
          ),
          leading: const Icon(
            Icons.arrow_back_ios,
            size: 12,
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
                mediumGap(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: const [
                    Flexible(
                      child: Text(
                        'Please select the payment method,'
                        ' you  have used',
                        style: TextStyle(
                            color: colorStyle,
                            fontSize: size18,
                            fontWeight: FontWeight.w800),
                      ),
                    ),
                  ],
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
                          padding: EdgeInsets.symmetric(horizontal: 15),
                          child: Text(
                            'State Bank of India',
                            style:
                                TextStyle(color: colorStyle, fontSize: size16),
                          ),
                        ),
                        onChanged: (value) {
                          // setState(() {
                          //   // _chosenValue = value;
                          // });
                        }),
                  ),
                ),
                mediumGap(),
                Row(
                  children: const [
                    Text(
                      'Payment for',
                      style: TextStyle(color: colorStyle, fontSize: size18),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                kTextField('For the account of donation'),
                smallGap(),
                Container(
                  height: 150,
                  width: 350,
                  decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.3),
                    borderRadius: const BorderRadius.all(
                      Radius.circular(5),
                    ),
                  ),
                  child: Center(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Icon(
                          Icons.camera_alt,
                          color: colorStyle,
                        ),
                        Text(
                          'Upload receipt',
                          style: TextStyle(color: colorStyle),
                        ),
                      ],
                    ),
                  ),
                ),
                smallGap(),
                Container(
                  height: 100,
                  width: 350,
                  decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.3),
                    borderRadius: const BorderRadius.all(
                      Radius.circular(5),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    child: TextFormField(
                      // textAlignVertical: TextAlignVertical.center,
                      decoration: const InputDecoration(
                        border: InputBorder.none,
                        hintText: 'Remarks',
                        hintStyle: TextStyle(color: colorStyle),
                      ),
                    ),
                  ),
                ),
                smallGap(),
                Column(
                  children: [
                    Row(
                      children: const [
                        Icon(
                          Icons.check_box_outline_blank,
                          color: colorStyle,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Flexible(
                          child: Text(
                            'I declare, that I am donating this amount of my  own free will and agree to all T&C ',
                            style: TextStyle(
                                color: colorStyle,
                                fontWeight: FontWeight.w600,
                                fontSize: size14),
                          ),
                        )
                      ],
                    ),
                    // Row(
                    //   children: const [
                    //     Text(
                    //       '  own free will and agree to all T&C',
                    //       style: TextStyle(color: colorStyle),
                    //     ),
                    //   ],
                    // )
                  ],
                ),
                mediumGap(),
                kSubmitButton(context, () {}),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
