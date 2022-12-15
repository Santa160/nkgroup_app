import 'dart:developer';

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
  TextEditingController controller = TextEditingController();
  bool isIdValid = false;
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
      child: BackgroundWrapper(
        child: Scaffold(
          backgroundColor: Colors.transparent,
          body: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: Container(
              padding: const EdgeInsets.all(30),
              width: MediaQuery.of(context).size.width,
              child: Form(
                  key: _formKey,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      smallGap(),
                      appWelcome(Colors.white),
                      mediumGap(),
                      TextFieldWrapper(
                          child: TextFormField(
                        maxLength: 7,
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                            counter: const Offstage(),
                            suffixIcon: isIdValid
                                ? const Icon(Icons.check_circle_sharp)
                                : const Icon(Icons.close)),
                        controller: controller,
                        onChanged: (newValue) {},
                      )),
                      TextFieldWrapper(child: TextFormField()),
                      TextFieldWrapper(child: TextFormField()),
                      TextFieldWrapper(child: TextFormField()),
                      TextFieldWrapper(child: TextFormField()),
                      CheckboxListTile(
                          controlAffinity: ListTileControlAffinity.leading,
                          title: const Text(
                            "I agree term and condition",
                            style: TextStyle(color: Colors.white),
                          ),
                          value: true,
                          onChanged: (v) {}),
                      kSubmitButton(context, () {
                        log("message");

                        // context.router.push(const HomeRoute());
                      }, 'Submit'),
                      mediumGap(),
                      GestureDetector(
                        onTap: () {
                          //TODO if not routing from signup to login
                          context.router.push(const LoginRoute());
                        },
                        child: const Center(
                            child: Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text(
                            "Already have an account? Check here ",
                            style: TextStyle(color: Colors.white),
                          ),
                        )),
                      )
                    ],
                  )),
            ),
          ),
        ),
      ),
    );
  }
}
