import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:country_calling_code_picker/picker.dart';
import 'package:nkgroup/src/core/core.dart';
import 'package:nkgroup/src/core/reuseable/bg.dart';
import 'package:nkgroup/src/router/app.router.gr.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
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

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: BackgroundWrapper(
        child: Scaffold(
          backgroundColor: Colors.transparent,
          body: Padding(
            padding: globalPading(),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                appWelcome(),
                mediumGap(),
                SizedBox(
                  width: MediaQuery.of(context).size.width / 2,
                  child: TabBar(
                    indicator: BoxDecoration(
                        color: dcolor, borderRadius: BorderRadius.circular(8)),
                    tabs: const [
                      SizedBox(
                          height: 31, child: Center(child: Text('Mobile'))),
                      SizedBox(height: 31, child: Center(child: Text('Email'))),
                    ],
                  ),
                ),
                smallGap(),
                SizedBox(
                  height: 50,
                  child: TabBarView(
                      physics: const NeverScrollableScrollPhysics(),
                      children: [
                        kMobileField(context, _selectedCountry),
                        kTextField("Email")
                      ]),
                ),
                smallGap(),
                kPasswordField("password"),
                mediumGap(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: const [
                    Text(
                      "Forget password",
                      style: TextStyle(color: Colors.white),
                    )
                  ],
                ),
                mediumGap(),
                kSubmitButton(context,
                    () => context.router.push(const HomeRoute()), 'Submit'),
                mediumGap(),
                const Center(
                  child: Text(
                    "Not a member? Join Now",
                    style: TextStyle(color: Colors.white),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
