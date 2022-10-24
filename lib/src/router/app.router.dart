import 'package:auto_route/annotations.dart';
import 'package:nkgroup/src/pages/pages.dart';

import '../extra/testing.page.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: [
    AutoRoute(page: TestingPage, path: '/', initial: true),
    AutoRoute(
      page: LoginPage,
      // path: '/',
      // initial: true,
    ),
    AutoRoute(page: HomePage, path: 'home'),
    AutoRoute(page: AddMemberPage, path: 'addmember'),
    AutoRoute(page: VerifyOtpPage, path: 'verify'),
    AutoRoute(page: HelpPage, path: 'help'),
    AutoRoute(page: ReceiverDetailsWaitingPage, path: 'recieverdetailswaiting'),
    AutoRoute(page: ProfilePage, path: 'profile'),
    AutoRoute(page: ChangePasswordPage, path: 'change'),
    AutoRoute(page: ReceiverDetailsPage, path: 'recieverdeatil'),
    AutoRoute(page: PaymentMethodPage, path: 'paymethod'),
    AutoRoute(page: AddPaymentMethodPage, path: 'addpaymentmethod'),
    AutoRoute(page: HelpGivenDetailsPage, path: 'helpgiven'),
    AutoRoute(page: PaymentDetailsPage, path: 'paymentdetails'),
    AutoRoute(page: DonationPage, path: 'donation'),
    AutoRoute(page: SignUpFormPage, path: 'signup'),
  ],
)
class $AppRouter {}
