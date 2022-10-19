import 'package:auto_route/auto_route.dart';
import 'package:country_calling_code_picker/picker.dart';
import 'package:flutter/material.dart';
import 'package:nkgroup/src/core/core.dart';
import 'package:nkgroup/src/core/reuseable/bg.dart';
import 'package:nkgroup/src/router/router.dart';

class AddMemberPage extends StatefulWidget {
  const AddMemberPage({super.key});

  @override
  State<AddMemberPage> createState() => _AddMemberPageState();
}

class _AddMemberPageState extends State<AddMemberPage> {
  Country? _selectedCountry;

  @override
  void initState() {
    initCountry();
    super.initState();
  }

  void initCountry() async {
    final country = await getDefaultCountry(context);

    setState(() {
      _selectedCountry = country;
    });
  }

  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return BackgroundWrapper(
      child: Scaffold(
        appBar: appBar(context, 'Add Member'),
        backgroundColor: Colors.transparent,
        resizeToAvoidBottomInset: false,
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
          child: Form(
              key: _formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  kTextField('Referral ID'),
                  smallGap(),
                  Text(
                    "Referral Username".toUpperCase(),
                    style: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                  smallGap(),
                  kTextField('Name'),
                  smallGap(),
                  kMobileField(context, _selectedCountry),
                  smallGap(),
                  kTextField('Email'),
                  smallGap(),
                  kPasswordField('Password'),
                  smallGap(),
                  CheckboxListTile(
                      controlAffinity: ListTileControlAffinity.leading,
                      title: const Text(
                        "I agree term and condition",
                        style: TextStyle(color: Colors.white),
                      ),
                      value: true,
                      onChanged: (v) {}),
                  // kSubmitButton(
                  //     context, () => context.router.push(const HomeRoute())),
                  mediumGap(),
                  kSubmitButton(
                      context,
                      () => context.router.push(const VerifyOtpRoute()),
                      'Submit')
                ],
              )),
        ),
      ),
    );
  }
}
