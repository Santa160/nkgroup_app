import 'package:auto_route/auto_route.dart';
import 'package:country_calling_code_picker/country.dart';
import 'package:country_calling_code_picker/country_code_picker.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:nkgroup/src/core/core.dart';
import 'package:nkgroup/src/core/reuseable/bg.dart';
import 'package:nkgroup/src/fake%20data/fake_data.dart';
import 'package:nkgroup/src/router/router.dart';

Column appWelcome(Color textColor) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(
        "Welcome to".toUpperCase(),
        style: TextStyle(
          color: textColor,
        ),
      ),
      Text(
        AppConfig.appName,
        style: TextStyle(
            color: textColor, fontSize: 30, fontWeight: FontWeight.bold),
      ),
    ],
  );
}

kMobileField(BuildContext context, Country? selectedCountry) {
  return Container(
    decoration: BoxDecoration(
      color: kIsWeb ? Colors.white : Colors.white.withOpacity(0.3),
      borderRadius: const BorderRadius.all(
        Radius.circular(5),
      ),
    ),
    child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Center(
        child: IntrinsicHeight(
          child: Row(
            children: [
              InkWell(
                  onTap: () async {},
                  child: selectedCountry == null
                      ? Container()
                      : SizedBox(
                          height: 20,
                          child: Image.asset(
                            selectedCountry.flag,
                            package: countryCodePackageName,
                          ),
                        )),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: VerticalDivider(
                  thickness: 2,
                ),
              ),
              Flexible(
                child: TextFormField(
                  keyboardType: TextInputType.phone,
                  maxLength: 10,
                  decoration: const InputDecoration(
                    hintText: 'Enter mobile number',
                    counter: Offstage(),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    ),
  );
}

Container kPasswordField(String hint) {
  return Container(
    decoration: BoxDecoration(
      color: Colors.white.withOpacity(kIsWeb ? 1 : 0.3),
      borderRadius: const BorderRadius.all(
        Radius.circular(5),
      ),
    ),
    child: Padding(
      padding: const EdgeInsets.only(left: 15),
      child: Center(
        child: TextFormField(
          obscureText: true,
          // textAlignVertical: TextAlignVertical.center,
          decoration: InputDecoration(
            suffixIcon: const Icon(
              Icons.remove_red_eye,
            ),
            hintText: hint,
          ),
        ),
      ),
    ),
  );
}

Widget kTextField(String hint) {
  return Container(
    decoration: BoxDecoration(
      color: Colors.white.withOpacity(kIsWeb ? 1 : 0.3),
      borderRadius: const BorderRadius.all(
        Radius.circular(5),
      ),
    ),
    child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Center(
        child: TextFormField(
          decoration: InputDecoration(hintText: hint),
          // textAlignVertical: TextAlignVertical.center,
        ),
      ),
    ),
  );
}

Widget kTextFieldEmail(String hint) {
  return Container(
    decoration: BoxDecoration(
      color: Colors.white.withOpacity(kIsWeb ? 1 : 0.3),
      borderRadius: const BorderRadius.all(
        Radius.circular(5),
      ),
    ),
    child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Center(
        child: TextFormField(
          keyboardType: TextInputType.emailAddress,
          decoration: InputDecoration(hintText: hint),
          // textAlignVertical: TextAlignVertical.center,
        ),
      ),
    ),
  );
}

Widget kTextFieldnumber(
    {required String hint,
    required TextEditingController controller,
    required VoidCallback onpress}) {
  return Container(
    decoration: BoxDecoration(
      color: Colors.white.withOpacity(kIsWeb ? 1 : 0.3),
      borderRadius: const BorderRadius.all(
        Radius.circular(5),
      ),
    ),
    child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Center(
        child: TextFormField(
          keyboardType: TextInputType.number,
          decoration: InputDecoration(hintText: hint),
          // textAlignVertical: TextAlignVertical.center,
        ),
      ),
    ),
  );
}

SizedBox kSubmitButton(
    BuildContext context, VoidCallback onpress, String title) {
  return SizedBox(
      height: 45,
      width: MediaQuery.of(context).size.width,
      child: ElevatedButton(
          style:
              ButtonStyle(backgroundColor: MaterialStateProperty.all(dcolor)),
          onPressed: onpress,
          child: Text(title)));
}

AppBar appBar(BuildContext context, String title) {
  return AppBar(
    leading: IconButton(
      icon: const Icon(
        Icons.arrow_back_ios_new,
        size: 12,
      ),
      onPressed: () {
        context.router.pop();
      },
    ),
    elevation: 0,
    backgroundColor: Colors.transparent,
    toolbarHeight: 100,
    title: Text(title),
  );
}

Drawer myDrawer(BuildContext context) {
  return Drawer(
    child: BackgroundWrapper(
      child: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    AppConfig.appName,
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 32,
                        fontWeight: FontWeight.bold),
                  ),
                  mediumGap(),
                  ...FakeData.drawerlist.map((e) {
                    return InkWell(
                      onTap: () {
                        if (e['title'] == 'Add New Member') {
                          context.router.push(const AddMemberRoute());
                        }
                        if (e['title'] == 'Payment Method') {
                          context.router.push(const PaymentMethodRoute());
                        }
                        if (e['title'] == 'My Profile') {
                          context.router.push(const ProfileRoute());
                        }
                        if (e['title'] == 'Change Password') {
                          context.router.push(const ChangePasswordRoute());
                        }
                      },
                      child: IgnorePointer(
                        ignoring: !e['dropdonw'],
                        child: ExpansionTile(
                          expandedCrossAxisAlignment: CrossAxisAlignment.start,
                          leading: e["icon"],
                          title: Text(
                            e['title'],
                            style: const TextStyle(
                              color: Colors.white,
                            ),
                          ),
                          trailing: !e['dropdonw']
                              ? const SizedBox()
                              : const Icon(Icons.arrow_drop_down),
                          children: [
                            InkWell(
                              onTap: () => context.router
                                  .push(HelpRoute(appBarTile: "Help Given")),
                              child: const Padding(
                                padding: EdgeInsets.all(15),
                                child: Text(
                                  "Help Given",
                                  style: TextStyle(color: Colors.white),
                                ),
                              ),
                            ),
                            InkWell(
                              onTap: () => context.router
                                  .push(HelpRoute(appBarTile: "Help Received")),
                              child: const Padding(
                                padding: EdgeInsets.all(15),
                                child: Text(
                                  "Help Received",
                                  style: TextStyle(color: Colors.white),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  }).toList()
                ],
              )),
        ),
      ),
    ),
  );
}

class TextFieldWrapper extends StatelessWidget {
  const TextFieldWrapper({super.key, required this.child});
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Container(
          height: 50,
          decoration: BoxDecoration(
            color: Colors.white.withOpacity(kIsWeb ? 1 : 0.3),
            borderRadius: const BorderRadius.all(
              Radius.circular(5),
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: child,
          )),
    );
  }
}
