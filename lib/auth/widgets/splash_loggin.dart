import 'package:encanto/auth/screens/logginscreen.dart';
import 'package:encanto/utils/colors.dart';
import 'package:encanto/utils/image.dart';
import 'package:encanto/utils/size.dart';
import 'package:encanto/widgets/global/container.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class LogginSplash extends StatelessWidget {
  const LogginSplash({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorsClass.logginBg,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            SizedBox(
              height: ResponsiveHelper.getHeight(context) * .180,
            ),
            Container(
              width: ResponsiveHelper.getWidth(context) * .99,
              height: ResponsiveHelper.getHeight(context) * .500,
              decoration: BoxDecoration(
                  // color: Colors.red,
                  image: DecorationImage(
                      image: AssetImage(Images.boardImagePath))),
            ),
            SizedBox(
              height: ResponsiveHelper.getHeight(context) * .120,
            ),
            Containerwidget(
              calback: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => LogginScreen(),
                    ));
              },
              textcolor: ColorsClass.bordingscreen,
              width: ResponsiveHelper.getWidth(context) * .90,
              height: ResponsiveHelper.getHeight(context) * .080,
              bgcolor: Colors.white,
              text: 'WELCOME',
            ),
          ],
        ),
      ),
    );
  }
}
