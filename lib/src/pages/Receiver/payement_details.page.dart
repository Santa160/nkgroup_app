import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:nkgroup/src/core/reuseable/bg.dart';
import 'package:nkgroup/src/router/router.dart';

import '../../core/core.dart';

class PaymentDetailsPage extends StatelessWidget {
  const PaymentDetailsPage({super.key});

  @override
  Widget build(BuildContext context) {
    const colorStyle = Colors.white;
    return BackgroundWrapper(
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Payment Details'),
          leading: IconButton(
            onPressed: () => context.router.pop(),
            icon: const Icon(
              Icons.arrow_back_ios,
              size: 12,
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
                mediumGap(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: const [
                    Text(
                      'Please select the payment method,',
                      style: TextStyle(color: colorStyle),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: const [
                    Text(
                      'you  have used',
                      style: TextStyle(color: colorStyle),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
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
                            style: TextStyle(color: colorStyle),
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
                      style: TextStyle(color: colorStyle),
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
                        Text(
                          'I declare, that I am donating this amount of my ',
                          style: TextStyle(color: colorStyle),
                        )
                      ],
                    ),
                    Row(
                      children: const [
                        Text(
                          '  own free will and agree to all T&C',
                          style: TextStyle(color: colorStyle),
                        ),
                      ],
                    )
                  ],
                ),
                mediumGap(),
                kSubmitButton(
                    context,
                    () => context.router
                        .push(ReceiverDetailsWaitingRoute(isApproved: false)),
                    'Submit'),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
