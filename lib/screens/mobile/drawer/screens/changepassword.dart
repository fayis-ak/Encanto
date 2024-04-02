import 'dart:developer';

import 'package:encanto/utils/colors.dart';
import 'package:encanto/utils/size.dart';
import 'package:encanto/widgets/app_bar.dart';
import 'package:encanto/widgets/global/container.dart';
import 'package:encanto/widgets/global/divider.dart';
import 'package:encanto/widgets/global/text.dart';
import 'package:encanto/widgets/global/textform_fieldwidget.dart';
import 'package:flutter/material.dart';

class ChangePasswordScreen extends StatelessWidget {
  ChangePasswordScreen({super.key});

  final _formKey = GlobalKey<FormState>();

  TextEditingController curentcontroller = TextEditingController();
  TextEditingController newcontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Appbarwidget(
        title: 'Chnage password',
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Dividerwidget(),
            Padding(
              padding: EdgeInsets.symmetric(
                vertical: ResponsiveHelper.getWidth(context) * .050,
                horizontal: ResponsiveHelper.getWidth(context) * .050,
              ),
              child: Form(
                key: _formKey,
                child: Column(
                  children: [
                    Textformwidget(
                      controller: curentcontroller,
                      radius: ResponsiveHelper.getWidth(context) * .080,
                      hint: 'Curent Password',
                      fillcolor: ColorsClass.whiteColor,
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
                      controller: newcontroller,
                      radius: ResponsiveHelper.getWidth(context) * .080,
                      hint: 'New Password',
                      fillcolor: ColorsClass.whiteColor,
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
                        controller: newcontroller,
                        radius: ResponsiveHelper.getWidth(context) * .080,
                        hint: 'Conform Password',
                        fillcolor: ColorsClass.whiteColor,
                        validation: (value) {
                          if (value!.isEmpty) {
                            return 'password is required';
                          } else if (value != newcontroller.text) {
                            return 'password do not match';
                          }
                          return null;
                        }),
                    SizedBox(
                      height: ResponsiveHelper.getHeight(context) * .050,
                    ),
                    Containerwidget(
                      width: ResponsiveHelper.getWidth(context) * .400,
                      height: ResponsiveHelper.getHeight(context) * .060,
                      bgcolor: ColorsClass.resetpassword,
                      text: 'Reset',
                      textcolor: ColorsClass.black,
                      calback: () {
                        if (_formKey.currentState!.validate()) {
                          log('ok ');
                        } else {
                          log('error');
                        }
                      },
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
