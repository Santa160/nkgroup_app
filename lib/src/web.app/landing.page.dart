import 'package:flutter/material.dart';
import 'package:nkgroup/src/web.app/core/responsive_layout.dart';
import 'package:nkgroup/src/web.app/core/views/desktop_view.dart';
import 'package:nkgroup/src/web.app/core/views/mobile_view.dart';
import 'package:nkgroup/src/web.app/core/views/tablet_view.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const ResponsiveLayout(
      desktopBody: DesktopVoew(),
      mobileBody: MobileView(),
      tabletBody: TabletView(),
    );
  }
}
