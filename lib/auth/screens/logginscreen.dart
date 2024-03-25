import 'dart:developer';

import 'package:encanto/auth/screens/forgot_password.dart';
import 'package:encanto/auth/screens/notification_screen.dart';
import 'package:encanto/auth/screens/signupscreen.dart';
import 'package:encanto/utils/colors.dart';
import 'package:encanto/utils/image.dart';
import 'package:encanto/utils/size.dart';
import 'package:encanto/utils/style.dart';
import 'package:encanto/widgets/global/container.dart';
import 'package:encanto/widgets/global/text.dart';
import 'package:encanto/widgets/global/textform_fieldwidget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class LogginScreen extends StatelessWidget {
  LogginScreen({super.key});

  final email = TextEditingController();
  final password = TextEditingController();

  final _formKey = GlobalKey<FormState>();

  void loggin() {
    log('value note null');
  }

  Widget BuildSignupButton(BuildContext context) {
    return RichText(
      text: TextSpan(
          text: '''Don't have an account? ''',
          style: TextStyle(color: ColorsClass.black),
          children: [
            TextSpan(
              text: 'Sign Up',
              style: TextStyle(
                color: ColorsClass.bordingscreen,
              ),
              recognizer: TapGestureRecognizer()
                ..onTap = () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => SignupScreen(),
                    ),
                  );
                },
            )
          ]),
    );
  }

  Widget textformWidgets(
      BuildContext context,
      final Icon? sufix,
      final Icon? prifix,
      final String hint,
      final int? maxlength,
      final TextEditingController? controller,
      final FormFieldValidator<String>? validation) {
    return TextFormField(
      textInputAction: TextInputAction.next,
      validator: validation,
      controller: controller,
      decoration: InputDecoration(
        hintText: hint,
        hintStyle: GoogleFonts.tinos(color: Colors.grey),
        suffixIcon: sufix,
        prefix: prifix,
        fillColor: ColorsClass.whiteColor,
        filled: true,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(
            ResponsiveHelper.getWidth(context) * .030,
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorsClass.logginBg,
      body: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: ResponsiveHelper.getWidth(context) * .050,
        ),
        child: SingleChildScrollView(
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                SizedBox(
                  height: ResponsiveHelper.getHeight(context) * .090,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Encanto',
                      style: GoogleFonts.tinos(
                        fontWeight: FontWeight.bold,
                        fontSize: ResponsiveHelper.getWidth(context) * .080,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: ResponsiveHelper.getHeight(context) * .050,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(
                          left: ResponsiveHelper.getWidth(context) * .050),
                      child: Textwidget(
                        text: 'Email',
                        fontsize: ResponsiveHelper.getWidth(context) * .040,
                      ),
                    ),
                    Textformwidget(
                      controller: email,
                      prifix: Icon(Icons.email),
                      hint: 'Enter your name',
                      validation: (value) {
                        if (value!.isEmpty) {
                          return 'please enter value';
                        }
                        return null;
                      },
                    )
                  ],
                ),
                SizedBox(
                  height: ResponsiveHelper.getHeight(context) * .040,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(
                          left: ResponsiveHelper.getWidth(context) * .050),
                      child: Textwidget(
                        text: 'password',
                        fontsize: ResponsiveHelper.getWidth(context) * .040,
                      ),
                    ),
                    Textformwidget(
                      maxlenght: 8,
                      prifix: Icon(Icons.lock),
                      hint: 'Enter your password',
                      sufix: Icon(Icons.visibility_off),
                      controller: password,
                      validation: (value) {
                        if (value!.isEmpty) {
                          return 'please enter value';
                        }
                        return null;
                      },
                    )
                  ],
                ),
                SizedBox(
                  height: ResponsiveHelper.getHeight(context) * .020,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    GestureDetector(
                      onTap: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => ForgotPassword(),
                          )),
                      child: Text(
                        'forgetPassword?',
                        style: GoogleFonts.tinos(
                          fontSize: ResponsiveHelper.getWidth(context) * .040,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: ResponsiveHelper.getHeight(context) * .05,
                ),
                Containerwidget(
                  calback: () {
                    if (_formKey.currentState!.validate()) {
                      loggin();
                      Navigator.push(context, MaterialPageRoute(
                        builder: (context) {
                          return NotificationScreen();
                        },
                      ));
                    } else {
                      log('value  null');
                    }
                  },
                  bgcolor: Colors.pink,
                  height: ResponsiveHelper.getHeight(context) * .070,
                  width: ResponsiveHelper.getWidth(context) * .8,
                  text: 'Login',
                  textcolor: ColorsClass.black,
                ),
                SizedBox(
                  height: ResponsiveHelper.getHeight(context) * .05,
                ),
                Row(
                  children: [
                    Expanded(
                      child: Divider(
                        thickness: 2,
                        color: ColorsClass.black,
                      ),
                    ),
                    Text(
                      'Or login with',
                      style: GoogleFonts.tinos(
                        fontSize: ResponsiveHelper.getWidth(context) * .050,
                      ),
                    ),
                    Expanded(
                      child: Divider(thickness: 2, color: ColorsClass.black),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      // color: Colors.red,
                      height: ResponsiveHelper.getHeight(context) * .080,
                      width: ResponsiveHelper.getWidth(context) * .080,
                      child: SvgPicture.asset(Images.facebook),
                    ),
                    SizedBox(
                      width: ResponsiveHelper.getWidth(context) * .040,
                    ),
                    Container(
                      // color: Colors.red,
                      height: ResponsiveHelper.getHeight(context) * .080,
                      width: ResponsiveHelper.getWidth(context) * .080,
                      child: SvgPicture.asset(Images.goggle),
                    ),
                  ],
                ),
                SizedBox(
                  height: ResponsiveHelper.getHeight(context) * .030,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    BuildSignupButton(context),
                  ],
                ),
                SizedBox(
                  height: ResponsiveHelper.getHeight(context) * .050,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
