import 'package:auto_route/annotations.dart';
import 'package:nkgroup/src/pages/pages.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: [
    AutoRoute(page: LoginPage, path: '', initial: true),
    AutoRoute(page: HomePage),
    AutoRoute(page: AddMemberPage),
    AutoRoute(page: VerifyOtpPage),
    AutoRoute(page: HelpPage),
    AutoRoute(page: ReceiverDetailsWaitingPage),
    AutoRoute(page: DonationPage),
    AutoRoute(page: SignUpFormPage),
  ],
)
class $AppRouter {}
