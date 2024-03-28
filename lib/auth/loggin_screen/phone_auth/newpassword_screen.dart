import 'dart:developer';

import 'package:encanto/auth/loggin_screen/phone_auth/changed_screen.dart';
import 'package:encanto/utils/colors.dart';
import 'package:encanto/utils/size.dart';
import 'package:encanto/widgets/global/container.dart';
import 'package:encanto/widgets/global/textform_fieldwidget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class NewPasswordScreen extends StatelessWidget {
  NewPasswordScreen({super.key});

  final _formKey = GlobalKey<FormState>();

  TextEditingController newpasswordController = TextEditingController();
  TextEditingController conformcontroller = TextEditingController();

  void passwordChange() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorsClass.logginScreenbg,
      body: Padding(
        padding: EdgeInsets.symmetric(
          // vertical: ResponsiveHelper.getHeight(context) * .140,
          horizontal: ResponsiveHelper.getWidth(context) * .050,
        ),
        child: SingleChildScrollView(
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                SizedBox(
                  height: ResponsiveHelper.getHeight(context) * .140,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Enter New password',
                      style: GoogleFonts.tinos(
                        color: ColorsClass.black,
                        fontSize: ResponsiveHelper.getWidth(context) * .080,
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Your new password must be different \n    from previously used password',
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
                Textformwidget(
                  
                  fillcolor: ColorsClass.whiteColor,
                  controller: newpasswordController,
                  hint: 'New Password',
                  sufix: Icon(
                    Icons.visibility_off,
                    color: Colors.grey,
                  ),
                  prifix: Icon(
                    Icons.lock,
                    color: Colors.grey,
                  ),
                  validation: (value) {
                    if (value!.isEmpty) {
                      return 'please enter value';
                    }
                    return null;
                  },
                ),
                SizedBox(
                  height: ResponsiveHelper.getHeight(context) * .050,
                ),
                Textformwidget(
 
                  fillcolor: ColorsClass.whiteColor,
                  controller: conformcontroller,
                  hint: 'Conform Password',
                  prifix: Icon(
                    Icons.lock,
                    color: Colors.grey,
                  ),
                  sufix: Icon(
                    Icons.visibility_off,
                    color: Colors.grey,
                  ),
                  validation: (value) {
                    if (value!.isEmpty) {
                      return 'please enter value';
                    }
                    return null;
                  },
                ),
                SizedBox(
                  height: ResponsiveHelper.getHeight(context) * .050,
                ),
                Containerwidget(
                  height: ResponsiveHelper.getHeight(context) * .070,
                  width: ResponsiveHelper.getWidth(context) * .75,
                  bgcolor: ColorsClass.bordingscreen,
                  text: 'Continue',
                  textcolor: ColorsClass.black,
                  calback: () {
                    if (_formKey.currentState!.validate()) {
                      passwordChange();
                      log('ok');
                      Navigator.pushAndRemoveUntil(
                          context,
                          MaterialPageRoute(
                            builder: (context) => PasswordChangedScreen(),
                          ),
                          (route) => false);
                    } else {
                      log('note ');
                    }
                  },
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
