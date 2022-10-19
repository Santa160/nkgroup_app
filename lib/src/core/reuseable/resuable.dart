import 'package:country_calling_code_picker/country.dart';
import 'package:country_calling_code_picker/country_code_picker.dart';
import 'package:flutter/material.dart';
import 'package:nkgroup/src/core/core.dart';

Column appWelcome() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(
        "Welcome to".toUpperCase(),
        style: const TextStyle(
          color: Colors.white,
        ),
      ),
      const Text(
        AppConfig.appName,
        style: TextStyle(
            fontFamily: 'Roboto',
            color: Colors.white,
            fontSize: 30,
            fontWeight: FontWeight.bold),
      ),
    ],
  );
}

kMobileField(BuildContext context, Country? selectedCountry) {
  return Container(
    decoration: BoxDecoration(
      color: Colors.white.withOpacity(0.3),
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
                  // textAlignVertical: TextAlignVertical.center,
                  decoration: const InputDecoration(
                    hintStyle: TextStyle(color: Colors.white),
                    border: InputBorder.none,
                    hintText: 'Enter mobile number',
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
      color: Colors.white.withOpacity(0.3),
      borderRadius: const BorderRadius.all(
        Radius.circular(5),
      ),
    ),
    child: Padding(
      padding: const EdgeInsets.only(left: 15),
      child: Center(
        child: TextFormField(
          obscureText: true,

          keyboardType: TextInputType.phone,
          // textAlignVertical: TextAlignVertical.center,
          decoration: InputDecoration(
            hintStyle: const TextStyle(color: Colors.white),
            suffixIcon: const Icon(
              Icons.remove_red_eye,
              color: Colors.white,
            ),
            border: InputBorder.none,
            hintText: hint,
          ),
        ),
      ),
    ),
  );
}

Container kTextField(String hint) {
  return Container(
    decoration: BoxDecoration(
      color: Colors.white.withOpacity(0.3),
      borderRadius: const BorderRadius.all(
        Radius.circular(5),
      ),
    ),
    child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Center(
        child: TextFormField(
          // textAlignVertical: TextAlignVertical.center,
          decoration: InputDecoration(
              border: InputBorder.none,
              hintText: hint,
              hintStyle: const TextStyle(color: Colors.white)),
        ),
      ),
    ),
  );
}

SizedBox kSubmitButton(
  BuildContext context,
  VoidCallback onpress,
) {
  return SizedBox(
      height: 50,
      width: MediaQuery.of(context).size.width,
      child: ElevatedButton(
          style:
              ButtonStyle(backgroundColor: MaterialStateProperty.all(dcolor)),
          onPressed: onpress,
          child: const Text("Submit")));
}
