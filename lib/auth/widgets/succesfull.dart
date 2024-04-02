import 'dart:async';

import 'package:encanto/auth/screens/notification_screen.dart';
import 'package:encanto/auth/screens/signupscreen.dart';
import 'package:encanto/utils/colors.dart';
import 'package:encanto/utils/image.dart';
import 'package:encanto/utils/size.dart';
import 'package:encanto/widgets/global/text.dart';

import 'package:flutter/material.dart';

class SuccessfulScreen extends StatefulWidget {
  const SuccessfulScreen({super.key});

  @override
  State<SuccessfulScreen> createState() => _SuccessfulScreenState();
}

class _SuccessfulScreenState extends State<SuccessfulScreen> {
  @override
  void initState() {
    Timer(Duration(seconds: 2), () {
      Navigator.of(context).push(MaterialPageRoute(
        builder: (context) {
          return AllowNotificationScreen();
        },
      ));
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorsClass.logginBg,
      body: Column(
        children: [
          SizedBox(
            height: ResponsiveHelper.getHeight(context) * .140,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                width: 150,
                height: 100,
                child: Image.asset(
                  Images.successful,
                ),
              ),
            ],
          ),
          SizedBox(
            height: ResponsiveHelper.getHeight(context) * .020,
          ),
          Textwidget(
            text: 'Successful',
            fontsize: ResponsiveHelper.getWidth(context) * .070,
          ),
          SizedBox(
            height: ResponsiveHelper.getHeight(context) * .020,
          ),
          Textwidget(
            text: 'Your mobile number has been\n    Successfully Varified',
            fontsize: ResponsiveHelper.getWidth(context) * .050,
            color: ColorsClass.whiteColor,
          ),
        ],
      ),
    );
  }
}
