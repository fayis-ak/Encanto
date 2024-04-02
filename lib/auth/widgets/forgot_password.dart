import 'dart:developer';

import 'package:encanto/auth/screens/otp_screen.dart';
import 'package:encanto/utils/colors.dart';
import 'package:encanto/utils/size.dart';
import 'package:encanto/widgets/global/container.dart';
import 'package:encanto/widgets/global/textform_fieldwidget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

class ForgotPassword extends StatelessWidget {
  ForgotPassword({super.key});
  final _formKey = GlobalKey<FormState>();

  TextEditingController forgotcontroller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorsClass.logginBg,
      body: Form(
        key: _formKey,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Column(
                children: [
                  SizedBox(
                    height: ResponsiveHelper.getHeight(context) * .150,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Forget Password?',
                        style: GoogleFonts.tinos(
                          fontSize: ResponsiveHelper.getWidth(context) * .070,
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
                      Text(
                        '''we'll send a verification code\n to this email or phone number ''',
                        style: GoogleFonts.tinos(
                          color: ColorsClass.whiteColor,
                          fontSize: ResponsiveHelper.getWidth(context) * .050,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: ResponsiveHelper.getHeight(context) * .050,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: ResponsiveHelper.getWidth(context) * .040,
                    ),
                    child: Textformwidget(
                       radius: ResponsiveHelper.getWidth(context) * .020,

                      fillcolor: ColorsClass.whiteColor,
                      controller: forgotcontroller,
                      hint: 'Enter your Email/phone no',
                      validation: (value) {
                        if (value!.isEmpty) {
                          return 'please enter value';
                        }
                        return null;
                      },
                    ),
                  ),
                  SizedBox(
                    height: ResponsiveHelper.getHeight(context) * .050,
                  ),
                  Containerwidget(
                    height: ResponsiveHelper.getHeight(context) * .070,
                    width: ResponsiveHelper.getWidth(context) * .8,
                    bgcolor: ColorsClass.bordingscreen,
                    text: 'Send Code',
                    textcolor: ColorsClass.black,
                    calback: () {
                      if (_formKey.currentState!.validate()) {
                        Navigator.pushAndRemoveUntil(
                            context,
                            MaterialPageRoute(
                              builder: (context) => OtpScreen(),
                            ),
                            (route) => false);
                      } else {
                        log('please enter value');
                      }
                    },
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
