import 'package:flutter/material.dart';

import 'package:nkgroup/src/core/core.dart';

import '../router/router.dart';
// import 'package:nkgroup/src/router/router.dart';

class MyApp extends StatelessWidget {
  MyApp({super.key});

  final appRouter = AppRouter();
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
        debugShowCheckedModeBanner: false,
        routerDelegate: appRouter.delegate(),
        routeInformationParser: appRouter.defaultRouteParser(),
        title: AppConfig.appName,
        theme: KTHEME().lightThemeData(context));
  }
}
