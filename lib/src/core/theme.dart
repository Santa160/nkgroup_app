import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:nkgroup/src/core/core.dart';
import 'package:nkgroup/src/extra/platform.dart';

class KTHEME {
  var platform = PlatformInfo().getCurrentPlatformType();
  ThemeData lightThemeData(BuildContext context) {
    return ThemeData(
      textSelectionTheme: const TextSelectionThemeData(cursorColor: dcolor),
      inputDecorationTheme: inputDecoration(),
      textTheme: _textTheme(),
      elevatedButtonTheme: _buttonTheme(),
      // scaffoldBackgroundColor: _scafoldBg(),

      appBarTheme: _appBarTheme(),
      fontFamily: 'Roboto',
      unselectedWidgetColor: Colors.grey,
      expansionTileTheme: const ExpansionTileThemeData(
        iconColor: Colors.white,
        collapsedIconColor: Colors.white,
      ),
      radioTheme: RadioThemeData(
        fillColor: MaterialStateColor.resolveWith(
            (states) => Colors.white), //<-- SEE HERE
      ),
    );
  }

  AppBarTheme _appBarTheme() => const AppBarTheme(
      foregroundColor: kIsWeb ? bcolor : wbgcolor,
      backgroundColor: Colors.transparent,
      elevation: 0);

  ElevatedButtonThemeData _buttonTheme() => ElevatedButtonThemeData(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.resolveWith(
            (Set<MaterialState> states) {
              if (states.contains(MaterialState.pressed)) {
                return bcolor;
              } else if (states.contains(MaterialState.disabled)) {
                return Colors.grey.withOpacity(0.4);
              }
              return dcolor; // Use the component's default.
            },
          ),
        ),
      );

  InputDecorationTheme inputDecoration() {
    return const InputDecorationTheme(
      fillColor: kIsWeb ? Colors.white : Colors.transparent,
      filled: true,
      focusColor: dcolor,
      suffixIconColor: Colors.white,
      border: InputBorder.none,
      hintStyle: TextStyle(color: kIsWeb ? Colors.grey : Colors.white),
    );
  }

  _textTheme() {
    return const TextTheme(

        // headline3: const TextStyle(color: Colors.white),
        displayLarge:
            TextStyle(color: bcolor, fontSize: 30, fontWeight: FontWeight.bold),
        titleLarge: TextStyle(
          color: Colors.white,
        ),
        titleMedium: TextStyle(
          color: Colors.white, // > also use in hint default
        ),
        bodySmall: TextStyle(color: bcolor, fontWeight: FontWeight.bold));
  }

  Color _scafoldBg() {
    if (kIsWeb) {
      return wbgcolor;
    } else {
      return Colors.transparent;
    }
  }

  Color _textFieldBg() {
    if (kIsWeb) {
      return Colors.white;
    } else {
      return Colors.white.withOpacity(0.3);
    }
  }

  // bool isWeb() {
  //   if (platform.name == TargetPlatform.android.name ||
  //       platform.name == TargetPlatform.iOS.name) {
  //     return false;
  //   } else {
  //     return true;
  //   }
  // }
}
