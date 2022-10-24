import 'package:flutter/material.dart';
import 'package:nkgroup/src/core/core.dart';
import 'package:nkgroup/src/extra/platform.dart';

class KTHEME {
  var platform = PlatformInfo().getCurrentPlatformType();
  ThemeData lightThemeData(BuildContext context) {
    return ThemeData(
      // textSelectionTheme: const TextSelectionThemeData(cursorColor: dcolor),
      inputDecorationTheme: inputDecoration(),
      // textTheme: _textTheme(),
      // elevatedButtonTheme: _buttonTheme(),
      scaffoldBackgroundColor: _scafoldBg(),
      appBarTheme: _appBarTheme(),
      fontFamily: 'Roboto',
      // unselectedWidgetColor: Colors.grey,
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

  AppBarTheme _appBarTheme() => AppBarTheme(
      foregroundColor: isWeb() ? dcolor : wbgcolor,
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
    return InputDecorationTheme(
      fillColor: _textFieldBg(),
      filled: true,
      focusColor: dcolor,
      suffixIconColor: Colors.white,
      border: InputBorder.none,
      hintStyle: const TextStyle(color: Colors.white),
    );
  }

  _textTheme() {
    return const TextTheme(
        // headline3: const TextStyle(color: Colors.white),
        titleLarge: TextStyle(
          color: Colors.red,
        ),
        titleMedium: TextStyle(
          color: Colors.red,
        ),
        bodySmall: TextStyle(color: Colors.red));
  }

  Color _scafoldBg() {
    if (isWeb()) {
      return wbgcolor;
    } else {
      return Colors.transparent;
    }
  }

  Color _textFieldBg() {
    if (platform.name == TargetPlatform.android.name ||
        platform.name == TargetPlatform.iOS.name) {
      return Colors.red;
    } else {
      return Colors.yellow;
    }
  }

  bool isWeb() {
    if (platform.name == TargetPlatform.android.name ||
        platform.name == TargetPlatform.iOS.name) {
      return false;
    } else {
      return true;
    }
  }
}
