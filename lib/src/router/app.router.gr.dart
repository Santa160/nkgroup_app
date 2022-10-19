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
          '/#redirect',
          path: '/',
          redirectTo: '',
          fullMatch: true,
        ),
        _i2.RouteConfig(
          LoginRoute.name,
          path: '',
        ),
        _i2.RouteConfig(
          HomeRoute.name,
          path: '/home-page',
        ),
        _i2.RouteConfig(
          AddMemberRoute.name,
          path: '/add-member-page',
        ),
        _i2.RouteConfig(
          VerifyOtpRoute.name,
          path: '/verify-otp-page',
        ),
        _i2.RouteConfig(
          HelpRoute.name,
          path: '/help-page',
        ),
        _i2.RouteConfig(
          ReceiverDetailsWaitingRoute.name,
          path: '/receiver-details-waiting-page',
        ),
        _i2.RouteConfig(
          DonationRoute.name,
          path: '/donation-page',
        ),
        _i2.RouteConfig(
          SignUpFormRoute.name,
          path: '/sign-up-form-page',
        ),
      ];
}

/// generated route for
/// [_i1.LoginPage]
class LoginRoute extends _i2.PageRouteInfo<void> {
  const LoginRoute()
      : super(
          LoginRoute.name,
          path: '',
        );

  static const String name = 'LoginRoute';
}

/// generated route for
/// [_i1.HomePage]
class HomeRoute extends _i2.PageRouteInfo<void> {
  const HomeRoute()
      : super(
          HomeRoute.name,
          path: '/home-page',
        );

  static const String name = 'HomeRoute';
}

/// generated route for
/// [_i1.AddMemberPage]
class AddMemberRoute extends _i2.PageRouteInfo<void> {
  const AddMemberRoute()
      : super(
          AddMemberRoute.name,
          path: '/add-member-page',
        );

  static const String name = 'AddMemberRoute';
}

/// generated route for
/// [_i1.VerifyOtpPage]
class VerifyOtpRoute extends _i2.PageRouteInfo<void> {
  const VerifyOtpRoute()
      : super(
          VerifyOtpRoute.name,
          path: '/verify-otp-page',
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
          path: '/help-page',
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
          path: '/receiver-details-waiting-page',
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
/// [_i1.DonationPage]
class DonationRoute extends _i2.PageRouteInfo<void> {
  const DonationRoute()
      : super(
          DonationRoute.name,
          path: '/donation-page',
        );

  static const String name = 'DonationRoute';
}

/// generated route for
/// [_i1.SignUpFormPage]
class SignUpFormRoute extends _i2.PageRouteInfo<void> {
  const SignUpFormRoute()
      : super(
          SignUpFormRoute.name,
          path: '/sign-up-form-page',
        );

  static const String name = 'SignUpFormRoute';
}
