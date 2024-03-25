import 'dart:async';

import 'package:encanto/auth/screens/bording_screen.dart';
import 'package:encanto/utils/colors.dart';
import 'package:encanto/utils/image.dart';
import 'package:encanto/utils/size.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Timer(Duration(seconds: 2), () {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(
          builder: (context) => BordingScreen(),
        ),
      );
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorsClass.bordingscreen,
      body: Center(
        child: Container(
          width: ResponsiveHelper.getWidth(context) * .90,
          height: ResponsiveHelper.getHeight(context) * .500,
          decoration: BoxDecoration(
              image: DecorationImage(image: AssetImage(Images.boardImagePath))),
        ),
      ),
    );
  }
}
