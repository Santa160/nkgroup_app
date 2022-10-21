import 'package:flutter/material.dart';
import 'package:nkgroup/src/core/core.dart';

class KTHEME {
  ThemeData lightThemeData(BuildContext context) {
    return ThemeData(
      textSelectionTheme: const TextSelectionThemeData(cursorColor: dcolor),
      inputDecorationTheme: inputDecoration(),
      textTheme: _textTheme(),
      elevatedButtonTheme: _buttonTheme(),
      scaffoldBackgroundColor: Colors.transparent,
      fontFamily: 'Roboto',
      unselectedWidgetColor: Colors.grey,
      expansionTileTheme: expansionTile(),
      radioTheme: RadioThemeData(
        fillColor: MaterialStateColor.resolveWith(
            (states) => Colors.white), //<-- SEE HERE
      ),
    );
  }

  ExpansionTileThemeData expansionTile() {
    return const ExpansionTileThemeData(
      iconColor: Colors.white,
      collapsedIconColor: Colors.white,
    );
  }

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
      focusColor: dcolor,
      suffixIconColor: Colors.white,
      border: InputBorder.none,
      hintStyle: TextStyle(color: Colors.white),
    );
  }

  _textTheme() {
    return const TextTheme(
        // headline3: const TextStyle(color: Colors.white),
        titleLarge: TextStyle(
          color: Colors.white,
        ),
        titleMedium: TextStyle(
          color: Colors.white,
        ),
        bodySmall: TextStyle(color: Colors.white));
  }
}
