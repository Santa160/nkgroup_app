import 'package:auto_route/annotations.dart';
import 'package:nkgroup/src/pages/pages.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(page: LoginPage),
    AutoRoute(page: SignUpFormPage),
    AutoRoute(page: HomePage, initial: true),
  ],
)
class $AppRouter {}
