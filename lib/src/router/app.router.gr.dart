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
import 'package:auto_route/auto_route.dart' as _i2;
import 'package:flutter/material.dart' as _i3;

import '../pages/pages.dart' as _i1;

class AppRouter extends _i2.RootStackRouter {
  AppRouter([_i3.GlobalKey<_i3.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i2.PageFactory> pagesMap = {
    LoginRoute.name: (routeData) {
      return _i2.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i1.LoginPage(),
      );
    },
    HomeRoute.name: (routeData) {
      return _i2.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i1.HomePage(),
      );
    },
    AddMemberRoute.name: (routeData) {
      return _i2.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i1.AddMemberPage(),
      );
    },
    VerifyOtpRoute.name: (routeData) {
      return _i2.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i1.VerifyOtpPage(),
      );
    },
    HelpRoute.name: (routeData) {
      final args = routeData.argsAs<HelpRouteArgs>();
      return _i2.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i1.HelpPage(
          key: args.key,
          appBarTile: args.appBarTile,
        ),
      );
    },
    ReceiverDetailsWaitingRoute.name: (routeData) {
      final args = routeData.argsAs<ReceiverDetailsWaitingRouteArgs>();
      return _i2.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i1.ReceiverDetailsWaitingPage(
          key: args.key,
          isApproved: args.isApproved,
        ),
      );
    },
    ProfileRoute.name: (routeData) {
      return _i2.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i1.ProfilePage(),
      );
    },
    ChangePasswordRoute.name: (routeData) {
      return _i2.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i1.ChangePasswordPage(),
      );
    },
    ReceiverDetailsRoute.name: (routeData) {
      return _i2.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i1.ReceiverDetailsPage(),
      );
    },
    PaymentMethodRoute.name: (routeData) {
      return _i2.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i1.PaymentMethodPage(),
      );
    },
    AddPaymentMethodRoute.name: (routeData) {
      return _i2.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i1.AddPaymentMethodPage(),
      );
    },
    HelpGivenDetailsRoute.name: (routeData) {
      return _i2.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i1.HelpGivenDetailsPage(),
      );
    },
    PaymentDetailsRoute.name: (routeData) {
      return _i2.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i1.PaymentDetailsPage(),
      );
    },
    DonationRoute.name: (routeData) {
      return _i2.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i1.DonationPage(),
      );
    },
    SignUpFormRoute.name: (routeData) {
      return _i2.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i1.SignUpFormPage(),
      );
    },
  };

  @override
  List<_i2.RouteConfig> get routes => [
        _i2.RouteConfig(
          LoginRoute.name,
          path: '/',
        ),
        _i2.RouteConfig(
          HomeRoute.name,
          path: 'home',
        ),
        _i2.RouteConfig(
          AddMemberRoute.name,
          path: 'addmember',
        ),
        _i2.RouteConfig(
          VerifyOtpRoute.name,
          path: 'verify',
        ),
        _i2.RouteConfig(
          HelpRoute.name,
          path: 'help',
        ),
        _i2.RouteConfig(
          ReceiverDetailsWaitingRoute.name,
          path: 'recieverdetailswaiting',
        ),
        _i2.RouteConfig(
          ProfileRoute.name,
          path: 'profile',
        ),
        _i2.RouteConfig(
          ChangePasswordRoute.name,
          path: 'change',
        ),
        _i2.RouteConfig(
          ReceiverDetailsRoute.name,
          path: 'recieverdeatil',
        ),
        _i2.RouteConfig(
          PaymentMethodRoute.name,
          path: 'paymethod',
        ),
        _i2.RouteConfig(
          AddPaymentMethodRoute.name,
          path: 'addpaymentmethod',
        ),
        _i2.RouteConfig(
          HelpGivenDetailsRoute.name,
          path: 'helpgiven',
        ),
        _i2.RouteConfig(
          PaymentDetailsRoute.name,
          path: 'paymentdetails',
        ),
        _i2.RouteConfig(
          DonationRoute.name,
          path: 'donation',
        ),
        _i2.RouteConfig(
          SignUpFormRoute.name,
          path: 'signup',
        ),
      ];
}

/// generated route for
/// [_i1.LoginPage]
class LoginRoute extends _i2.PageRouteInfo<void> {
  const LoginRoute()
      : super(
          LoginRoute.name,
          path: '/',
        );

  static const String name = 'LoginRoute';
}

/// generated route for
/// [_i1.HomePage]
class HomeRoute extends _i2.PageRouteInfo<void> {
  const HomeRoute()
      : super(
          HomeRoute.name,
          path: 'home',
        );

  static const String name = 'HomeRoute';
}

/// generated route for
/// [_i1.AddMemberPage]
class AddMemberRoute extends _i2.PageRouteInfo<void> {
  const AddMemberRoute()
      : super(
          AddMemberRoute.name,
          path: 'addmember',
        );

  static const String name = 'AddMemberRoute';
}

/// generated route for
/// [_i1.VerifyOtpPage]
class VerifyOtpRoute extends _i2.PageRouteInfo<void> {
  const VerifyOtpRoute()
      : super(
          VerifyOtpRoute.name,
          path: 'verify',
        );

  static const String name = 'VerifyOtpRoute';
}

/// generated route for
/// [_i1.HelpPage]
class HelpRoute extends _i2.PageRouteInfo<HelpRouteArgs> {
  HelpRoute({
    _i3.Key? key,
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

  final _i3.Key? key;

  final String appBarTile;

  @override
  String toString() {
    return 'HelpRouteArgs{key: $key, appBarTile: $appBarTile}';
  }
}

/// generated route for
/// [_i1.ReceiverDetailsWaitingPage]
class ReceiverDetailsWaitingRoute
    extends _i2.PageRouteInfo<ReceiverDetailsWaitingRouteArgs> {
  ReceiverDetailsWaitingRoute({
    _i3.Key? key,
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

  final _i3.Key? key;

  final bool isApproved;

  @override
  String toString() {
    return 'ReceiverDetailsWaitingRouteArgs{key: $key, isApproved: $isApproved}';
  }
}

/// generated route for
/// [_i1.ProfilePage]
class ProfileRoute extends _i2.PageRouteInfo<void> {
  const ProfileRoute()
      : super(
          ProfileRoute.name,
          path: 'profile',
        );

  static const String name = 'ProfileRoute';
}

/// generated route for
/// [_i1.ChangePasswordPage]
class ChangePasswordRoute extends _i2.PageRouteInfo<void> {
  const ChangePasswordRoute()
      : super(
          ChangePasswordRoute.name,
          path: 'change',
        );

  static const String name = 'ChangePasswordRoute';
}

/// generated route for
/// [_i1.ReceiverDetailsPage]
class ReceiverDetailsRoute extends _i2.PageRouteInfo<void> {
  const ReceiverDetailsRoute()
      : super(
          ReceiverDetailsRoute.name,
          path: 'recieverdeatil',
        );

  static const String name = 'ReceiverDetailsRoute';
}

/// generated route for
/// [_i1.PaymentMethodPage]
class PaymentMethodRoute extends _i2.PageRouteInfo<void> {
  const PaymentMethodRoute()
      : super(
          PaymentMethodRoute.name,
          path: 'paymethod',
        );

  static const String name = 'PaymentMethodRoute';
}

/// generated route for
/// [_i1.AddPaymentMethodPage]
class AddPaymentMethodRoute extends _i2.PageRouteInfo<void> {
  const AddPaymentMethodRoute()
      : super(
          AddPaymentMethodRoute.name,
          path: 'addpaymentmethod',
        );

  static const String name = 'AddPaymentMethodRoute';
}

/// generated route for
/// [_i1.HelpGivenDetailsPage]
class HelpGivenDetailsRoute extends _i2.PageRouteInfo<void> {
  const HelpGivenDetailsRoute()
      : super(
          HelpGivenDetailsRoute.name,
          path: 'helpgiven',
        );

  static const String name = 'HelpGivenDetailsRoute';
}

/// generated route for
/// [_i1.PaymentDetailsPage]
class PaymentDetailsRoute extends _i2.PageRouteInfo<void> {
  const PaymentDetailsRoute()
      : super(
          PaymentDetailsRoute.name,
          path: 'paymentdetails',
        );

  static const String name = 'PaymentDetailsRoute';
}

/// generated route for
/// [_i1.DonationPage]
class DonationRoute extends _i2.PageRouteInfo<void> {
  const DonationRoute()
      : super(
          DonationRoute.name,
          path: 'donation',
        );

  static const String name = 'DonationRoute';
}

/// generated route for
/// [_i1.SignUpFormPage]
class SignUpFormRoute extends _i2.PageRouteInfo<void> {
  const SignUpFormRoute()
      : super(
          SignUpFormRoute.name,
          path: 'signup',
        );

  static const String name = 'SignUpFormRoute';
}
