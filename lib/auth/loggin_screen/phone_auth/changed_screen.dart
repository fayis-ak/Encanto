import 'package:encanto/auth/screens/logginscreen.dart';
import 'package:encanto/utils/colors.dart';
import 'package:encanto/utils/image.dart';
import 'package:encanto/utils/size.dart';
import 'package:encanto/widgets/global/container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class PasswordChangedScreen extends StatelessWidget {
  const PasswordChangedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorsClass.logginBg,
      body: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: ResponsiveHelper.getWidth(context) * .050,
        ),
        child: Column(
          children: [
            SizedBox(
              height: ResponsiveHelper.getHeight(context) * .150,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(Images.tick),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Password Changed',
                  style: GoogleFonts.tinos(
                    fontSize: ResponsiveHelper.getWidth(context) * .070,
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Your Password has been changed  \n                  successfully',
                  style: GoogleFonts.tinos(
                    color: ColorsClass.whiteColor,
                    fontSize: ResponsiveHelper.getWidth(context) * .050,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: ResponsiveHelper.getHeight(context) * .150,
            ),
            Containerwidget(
              height: ResponsiveHelper.getHeight(context) * .070,
              width: ResponsiveHelper.getWidth(context) * .75,
              bgcolor: ColorsClass.bordingscreen,
              text: 'Back to Login',
              textcolor: ColorsClass.black,
              calback: () {
                Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(
                      builder: (context) => LogginScreen(),
                    ),
                    (route) => false);
              },
            ),
          ],
        ),
      ),
    );
  }
}
