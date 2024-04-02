import 'package:encanto/auth/splash_screen/spalash_scren.dart';
import 'package:encanto/screens/web/auth/logginpage/logginscreen.dart';
import 'package:flutter/material.dart';

class ResponsiveLyaout extends StatelessWidget {
  const ResponsiveLyaout({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          if (constraints.maxWidth > 600) {
            return LogginWeb();
          } else {
            return SplashScreen();
          }
        },
      ),
    );
  }
}
