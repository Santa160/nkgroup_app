import 'package:flutter/material.dart';

import 'package:nkgroup/src/core/core.dart';
import 'package:nkgroup/src/pages/home.dart';
// import 'package:nkgroup/src/router/router.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    // final appRouter = AppRouter();
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // routerDelegate: appRouter.delegate(),
      // routeInformationParser: appRouter.defaultRouteParser(),
      title: AppConfig.appName,
      theme: ThemeData(
          fontFamily: 'Roboto',
          unselectedWidgetColor: Colors.grey,
          radioTheme: RadioThemeData(
            fillColor: MaterialStateColor.resolveWith(
                (states) => Colors.white), //<-- SEE HERE
          )),

      home: const HomePage(),
    );
  }
}
