// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i3;
import 'package:flutter/material.dart' as _i4;

import '../extra/testing.page.dart' as _i1;
import '../pages/pages.dart' as _i2;

class AppRouter extends _i3.RootStackRouter {
  AppRouter([_i4.GlobalKey<_i4.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i3.PageFactory> pagesMap = {
    TestingRoute.name: (routeData) {
      return _i3.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i1.TestingPage(),
      );
    },
    LoginRoute.name: (routeData) {
      return _i3.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i2.LoginPage(),
      );
    },
    HomeRoute.name: (routeData) {
      return _i3.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i2.HomePage(),
      );
    },
    AddMemberRoute.name: (routeData) {
      return _i3.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i2.AddMemberPage(),
      );
    },
    VerifyOtpRoute.name: (routeData) {
      return _i3.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i2.VerifyOtpPage(),
      );
    },
    HelpRoute.name: (routeData) {
      final args = routeData.argsAs<HelpRouteArgs>();
      return _i3.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i2.HelpPage(
          key: args.key,
          appBarTile: args.appBarTile,
        ),
      );
    },
    ReceiverDetailsWaitingRoute.name: (routeData) {
      final args = routeData.argsAs<ReceiverDetailsWaitingRouteArgs>();
      return _i3.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i2.ReceiverDetailsWaitingPage(
          key: args.key,
          isApproved: args.isApproved,
        ),
      );
    },
    ProfileRoute.name: (routeData) {
      return _i3.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i2.ProfilePage(),
      );
    },
    ChangePasswordRoute.name: (routeData) {
      return _i3.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i2.ChangePasswordPage(),
      );
    },
    ReceiverDetailsRoute.name: (routeData) {
      return _i3.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i2.ReceiverDetailsPage(),
      );
    },
    PaymentMethodRoute.name: (routeData) {
      return _i3.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i2.PaymentMethodPage(),
      );
    },
    AddPaymentMethodRoute.name: (routeData) {
      return _i3.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i2.AddPaymentMethodPage(),
      );
    },
    HelpGivenDetailsRoute.name: (routeData) {
      return _i3.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i2.HelpGivenDetailsPage(),
      );
    },
    PaymentDetailsRoute.name: (routeData) {
      return _i3.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i2.PaymentDetailsPage(),
      );
    },
    DonationRoute.name: (routeData) {
      return _i3.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i2.DonationPage(),
      );
    },
    SignUpFormRoute.name: (routeData) {
      return _i3.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i2.SignUpFormPage(),
      );
    },
  };

  @override
  List<_i3.RouteConfig> get routes => [
        _i3.RouteConfig(
          TestingRoute.name,
          path: '/',
        ),
        _i3.RouteConfig(
          LoginRoute.name,
          path: '/login-page',
        ),
        _i3.RouteConfig(
          HomeRoute.name,
          path: 'home',
        ),
        _i3.RouteConfig(
          AddMemberRoute.name,
          path: 'addmember',
        ),
        _i3.RouteConfig(
          VerifyOtpRoute.name,
          path: 'verify',
        ),
        _i3.RouteConfig(
          HelpRoute.name,
          path: 'help',
        ),
        _i3.RouteConfig(
          ReceiverDetailsWaitingRoute.name,
          path: 'recieverdetailswaiting',
        ),
        _i3.RouteConfig(
          ProfileRoute.name,
          path: 'profile',
        ),
        _i3.RouteConfig(
          ChangePasswordRoute.name,
          path: 'change',
        ),
        _i3.RouteConfig(
          ReceiverDetailsRoute.name,
          path: 'recieverdeatil',
        ),
        _i3.RouteConfig(
          PaymentMethodRoute.name,
          path: 'paymethod',
        ),
        _i3.RouteConfig(
          AddPaymentMethodRoute.name,
          path: 'addpaymentmethod',
        ),
        _i3.RouteConfig(
          HelpGivenDetailsRoute.name,
          path: 'helpgiven',
        ),
        _i3.RouteConfig(
          PaymentDetailsRoute.name,
          path: 'paymentdetails',
        ),
        _i3.RouteConfig(
          DonationRoute.name,
          path: 'donation',
        ),
        _i3.RouteConfig(
          SignUpFormRoute.name,
          path: 'signup',
        ),
      ];
}

/// generated route for
/// [_i1.TestingPage]
class TestingRoute extends _i3.PageRouteInfo<void> {
  const TestingRoute()
      : super(
          TestingRoute.name,
          path: '/',
        );

  static const String name = 'TestingRoute';
}

/// generated route for
/// [_i2.LoginPage]
class LoginRoute extends _i3.PageRouteInfo<void> {
  const LoginRoute()
      : super(
          LoginRoute.name,
          path: '/login-page',
        );

  static const String name = 'LoginRoute';
}

/// generated route for
/// [_i2.HomePage]
class HomeRoute extends _i3.PageRouteInfo<void> {
  const HomeRoute()
      : super(
          HomeRoute.name,
          path: 'home',
        );

  static const String name = 'HomeRoute';
}

/// generated route for
/// [_i2.AddMemberPage]
class AddMemberRoute extends _i3.PageRouteInfo<void> {
  const AddMemberRoute()
      : super(
          AddMemberRoute.name,
          path: 'addmember',
        );

  static const String name = 'AddMemberRoute';
}

/// generated route for
/// [_i2.VerifyOtpPage]
class VerifyOtpRoute extends _i3.PageRouteInfo<void> {
  const VerifyOtpRoute()
      : super(
          VerifyOtpRoute.name,
          path: 'verify',
        );

  static const String name = 'VerifyOtpRoute';
}

/// generated route for
/// [_i2.HelpPage]
class HelpRoute extends _i3.PageRouteInfo<HelpRouteArgs> {
  HelpRoute({
    _i4.Key? key,
    required String appBarTile,
  }) : super(
          HelpRoute.name,
          path: 'help',
          args: HelpRouteArgs(
            key: key,
            appBarTile: appBarTile,
          ),
        );

  static const String name = 'HelpRoute';
}

class HelpRouteArgs {
  const HelpRouteArgs({
    this.key,
    required this.appBarTile,
  });

  final _i4.Key? key;

  final String appBarTile;

  @override
  String toString() {
    return 'HelpRouteArgs{key: $key, appBarTile: $appBarTile}';
  }
}

/// generated route for
/// [_i2.ReceiverDetailsWaitingPage]
class ReceiverDetailsWaitingRoute
    extends _i3.PageRouteInfo<ReceiverDetailsWaitingRouteArgs> {
  ReceiverDetailsWaitingRoute({
    _i4.Key? key,
    required bool isApproved,
  }) : super(
          ReceiverDetailsWaitingRoute.name,
          path: 'recieverdetailswaiting',
          args: ReceiverDetailsWaitingRouteArgs(
            key: key,
            isApproved: isApproved,
          ),
        );

  static const String name = 'ReceiverDetailsWaitingRoute';
}

class ReceiverDetailsWaitingRouteArgs {
  const ReceiverDetailsWaitingRouteArgs({
    this.key,
    required this.isApproved,
  });

  final _i4.Key? key;

  final bool isApproved;

  @override
  String toString() {
    return 'ReceiverDetailsWaitingRouteArgs{key: $key, isApproved: $isApproved}';
  }
}

/// generated route for
/// [_i2.ProfilePage]
class ProfileRoute extends _i3.PageRouteInfo<void> {
  const ProfileRoute()
      : super(
          ProfileRoute.name,
          path: 'profile',
        );

  static const String name = 'ProfileRoute';
}

/// generated route for
/// [_i2.ChangePasswordPage]
class ChangePasswordRoute extends _i3.PageRouteInfo<void> {
  const ChangePasswordRoute()
      : super(
          ChangePasswordRoute.name,
          path: 'change',
        );

  static const String name = 'ChangePasswordRoute';
}

/// generated route for
/// [_i2.ReceiverDetailsPage]
class ReceiverDetailsRoute extends _i3.PageRouteInfo<void> {
  const ReceiverDetailsRoute()
      : super(
          ReceiverDetailsRoute.name,
          path: 'recieverdeatil',
        );

  static const String name = 'ReceiverDetailsRoute';
}

/// generated route for
/// [_i2.PaymentMethodPage]
class PaymentMethodRoute extends _i3.PageRouteInfo<void> {
  const PaymentMethodRoute()
      : super(
          PaymentMethodRoute.name,
          path: 'paymethod',
        );

  static const String name = 'PaymentMethodRoute';
}

/// generated route for
/// [_i2.AddPaymentMethodPage]
class AddPaymentMethodRoute extends _i3.PageRouteInfo<void> {
  const AddPaymentMethodRoute()
      : super(
          AddPaymentMethodRoute.name,
          path: 'addpaymentmethod',
        );

  static const String name = 'AddPaymentMethodRoute';
}

/// generated route for
/// [_i2.HelpGivenDetailsPage]
class HelpGivenDetailsRoute extends _i3.PageRouteInfo<void> {
  const HelpGivenDetailsRoute()
      : super(
          HelpGivenDetailsRoute.name,
          path: 'helpgiven',
        );

  static const String name = 'HelpGivenDetailsRoute';
}

/// generated route for
/// [_i2.PaymentDetailsPage]
class PaymentDetailsRoute extends _i3.PageRouteInfo<void> {
  const PaymentDetailsRoute()
      : super(
          PaymentDetailsRoute.name,
          path: 'paymentdetails',
        );

  static const String name = 'PaymentDetailsRoute';
}

/// generated route for
/// [_i2.DonationPage]
class DonationRoute extends _i3.PageRouteInfo<void> {
  const DonationRoute()
      : super(
          DonationRoute.name,
          path: 'donation',
        );

  static const String name = 'DonationRoute';
}

/// generated route for
/// [_i2.SignUpFormPage]
class SignUpFormRoute extends _i3.PageRouteInfo<void> {
  const SignUpFormRoute()
      : super(
          SignUpFormRoute.name,
          path: 'signup',
        );

  static const String name = 'SignUpFormRoute';
}
