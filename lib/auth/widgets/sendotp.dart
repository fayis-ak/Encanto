import 'package:encanto/auth/loggin_screen/phone_auth/newpassword_screen.dart';
import 'package:encanto/auth/widgets/succesfull.dart';
import 'package:encanto/utils/colors.dart';
import 'package:encanto/utils/size.dart';
import 'package:encanto/widgets/global/container.dart';
import 'package:encanto/widgets/global/textform_fieldwidget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pinput/pinput.dart';

class SendOtp extends StatelessWidget {
  final String phonenumber;
  SendOtp({super.key, required this.phonenumber});

  final defaultPinTheme = PinTheme(textStyle: TextStyle());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorsClass.logginBg,
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: ResponsiveHelper.getHeight(context) * .120,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Enter YOur OTP',
                  style: GoogleFonts.tinos(
                    fontSize: ResponsiveHelper.getWidth(context) * .070,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: ResponsiveHelper.getHeight(context) * .190,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Verification code',
                  style: GoogleFonts.tinos(
                    fontSize: ResponsiveHelper.getWidth(context) * .050,
                    color: ColorsClass.whiteColor,
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'send to ',
                  style: GoogleFonts.tinos(
                    fontSize: ResponsiveHelper.getWidth(context) * .040,
                    color: ColorsClass.whiteColor,
                  ),
                ),
                Text(
                  '+91 ${phonenumber}',
                  style: GoogleFonts.tinos(
                    fontSize: ResponsiveHelper.getWidth(context) * .050,
                    color: ColorsClass.whiteColor,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: ResponsiveHelper.getHeight(context) * .050,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Pinput(
                  length: 4,
                  onCompleted: (pin) => debugPrint(pin),
                ),
              ],
            ),
            SizedBox(
              height: ResponsiveHelper.getHeight(context) * .020,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                RichText(
                  text: TextSpan(
                    text: '''if You Don't Recive Code? ''',
                    children: [
                      TextSpan(
                        text: 'Resend',
                        style: TextStyle(
                          color: ColorsClass.bordingscreen,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(
              height: ResponsiveHelper.getHeight(context) * .050,
            ),
            Containerwidget(
              height: ResponsiveHelper.getHeight(context) * .070,
              width: ResponsiveHelper.getWidth(context) * .8,
              bgcolor: ColorsClass.bordingscreen,
              text: 'Submit',
              textcolor: ColorsClass.black,
              calback: () {
                Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(
                      builder: (context) => SuccessfulScreen(),
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
