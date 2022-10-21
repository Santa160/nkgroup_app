import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:country_calling_code_picker/picker.dart';
import 'package:nkgroup/src/core/core.dart';
import 'package:nkgroup/src/core/reuseable/bg.dart';
import 'package:nkgroup/src/router/app.router.gr.dart';

class SignUpFormPage extends StatefulWidget {
  const SignUpFormPage({Key? key}) : super(key: key);

  @override
  State<SignUpFormPage> createState() => _SignUpFormPageState();
}

class _SignUpFormPageState extends State<SignUpFormPage> {
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
        resizeToAvoidBottomInset: false,
        body: Container(
          padding: const EdgeInsets.all(30),
          width: MediaQuery.of(context).size.width,
          child: Form(
              key: _formKey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  appWelcome(),
                  mediumGap(),
                  kTextField('Referral ID'),
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
                  kSubmitButton(context,
                      () => context.router.push(const HomeRoute()), 'Submit'),
                  mediumGap(),
                  InkWell(
                    onTap: () => context.router.push(const LoginRoute()),
                    child: const Center(
                        child: Text(
                      "Already have an account? Check here ",
                      style: TextStyle(color: Colors.white),
                    )),
                  )
                ],
              )),
        ),
      ),
    );
  }
}
