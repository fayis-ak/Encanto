import 'dart:developer';

import 'package:encanto/auth/widgets/sendotp.dart';
import 'package:encanto/utils/colors.dart';
import 'package:encanto/utils/size.dart';
import 'package:encanto/widgets/global/container.dart';
import 'package:encanto/widgets/global/text.dart';
import 'package:encanto/widgets/global/textform_fieldwidget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

class SignupScreen extends StatelessWidget {
  SignupScreen({super.key});

  final _nameController = TextEditingController();
  final _numberController = TextEditingController();
  final _emailController = TextEditingController();
  final _password = TextEditingController();
  final _Conformpassword = TextEditingController();

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorsClass.logginBg,
      body: Padding(
        padding: EdgeInsets.symmetric(
          // vertical: ResponsiveHelper.getHeight(context) * .080,
          horizontal: ResponsiveHelper.getWidth(context) * .030,
        ),
        child: SingleChildScrollView(
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                SizedBox(
                  height: ResponsiveHelper.getHeight(context) * .100,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Sign Up',
                      style: GoogleFonts.tinos(
                        fontWeight: FontWeight.bold,
                        fontSize: ResponsiveHelper.getWidth(context) * .080,
                      ),
                    ),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(
                              left: ResponsiveHelper.getWidth(context) * .050),
                          child: Textwidget(
                            text: 'User name',
                            fontsize: ResponsiveHelper.getWidth(context) * .040,
                          ),
                        ),
                      ],
                    ),
                    Textformwidget(
                       radius: ResponsiveHelper.getWidth(context) * .020,

                      fillcolor: ColorsClass.whiteColor,
                      controller: _nameController,
                      hint: 'Enter Your name',
                      prifix: Icon(Icons.person_2_outlined),
                      validation: (value) {
                        if (value!.isEmpty) {
                          return ' please enter value';
                        } else {
                          return null;
                        }
                      },
                    ),
                  ],
                ),
                SizedBox(
                  height: ResponsiveHelper.getHeight(context) * .030,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(
                          left: ResponsiveHelper.getWidth(context) * .050),
                      child: Textwidget(
                        text: 'Mobile number',
                        fontsize: ResponsiveHelper.getWidth(context) * .040,
                      ),
                    ),
                    Textformwidget(
                       radius: ResponsiveHelper.getWidth(context) * .020,

                      fillcolor: ColorsClass.whiteColor,
                      maxlenght: 10,
                      controller: _numberController,
                      hint: 'Enter Your Number',
                      prifix: Icon(Icons.phone),
                      validation: (value) {
                        if (value!.isEmpty) {
                          return ' please enter value';
                        } else {
                          return null;
                        }
                      },
                    ),
                  ],
                ),
                SizedBox(
                  height: ResponsiveHelper.getHeight(context) * .030,
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
                       radius: ResponsiveHelper.getWidth(context) * .020,

                      fillcolor: ColorsClass.whiteColor,
                      controller: _emailController,
                      hint: 'Enter Your Email',
                      prifix: Icon(Icons.mail),
                      validation: (value) {
                        if (value!.isEmpty) {
                          return ' please enter value';
                        } else {
                          return null;
                        }
                      },
                    ),
                  ],
                ),
                SizedBox(
                  height: ResponsiveHelper.getHeight(context) * .030,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(
                          left: ResponsiveHelper.getWidth(context) * .050),
                      child: Textwidget(
                        text: 'Password',
                        fontsize: ResponsiveHelper.getWidth(context) * .040,
                      ),
                    ),
                    Textformwidget(
                       radius: ResponsiveHelper.getWidth(context) * .020,

                      fillcolor: ColorsClass.whiteColor,
                      controller: _password,
                      prifix: Icon(Icons.lock),
                      hint: 'Enter Your Password',
                      sufix: Icon(Icons.visibility_off),
                      validation: (value) {
                        if (value!.isEmpty) {
                          return ' please enter value';
                        } else {
                          return null;
                        }
                      },
                    ),
                  ],
                ),
                SizedBox(
                  height: ResponsiveHelper.getHeight(context) * .030,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(
                          left: ResponsiveHelper.getWidth(context) * .050),
                      child: Textwidget(
                        text: 'Conform Password',
                        fontsize: ResponsiveHelper.getWidth(context) * .040,
                      ),
                    ),
                    Textformwidget(
                       radius: ResponsiveHelper.getWidth(context) * .020,

                        fillcolor: ColorsClass.whiteColor,
                        controller: _Conformpassword,
                        prifix: Icon(Icons.lock),
                        hint: 'Conform Password',
                        sufix: Icon(Icons.visibility_off),
                        validation: (value) {
                          if (value!.isEmpty) {
                            return 'password is required';
                          } else if (value != _password.text) {
                            return 'password do not match';
                          }
                          return null;
                        }),
                  ],
                ),
                SizedBox(
                  height: ResponsiveHelper.getHeight(context) * .050,
                ),
                Containerwidget(
                  bgcolor: Colors.pink,
                  height: ResponsiveHelper.getHeight(context) * .070,
                  width: ResponsiveHelper.getWidth(context) * .8,
                  text: 'Login',
                  textcolor: ColorsClass.black,
                  calback: () {
                    if (_formKey.currentState!.validate()) {
                      log('all valid');
                      Navigator.pushAndRemoveUntil(
                        context,
                        MaterialPageRoute(builder: (context) {
                          final phoneNumber = _numberController.text.trim();
                          return SendOtp(
                            phonenumber: phoneNumber,
                          );
                        }),
                        (route) => false,
                      );
                      log(_numberController.text);
                    } else {
                      log('null');
                    }
                  },
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
