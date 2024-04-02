import 'package:encanto/utils/colors.dart';
import 'package:encanto/utils/size.dart';
import 'package:encanto/widgets/global/container.dart';

import 'package:encanto/widgets/global/textform_fieldwidget.dart';
import 'package:flutter/material.dart';

class LogginWeb extends StatelessWidget {
  LogginWeb({super.key});
  final password = TextEditingController();

  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          color: Colors.red,
        ),
        child: Stack(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: ResponsiveHelper.getWidth(context) * .140,
                vertical: ResponsiveHelper.getWidth(context) * .050,
              ),
              child: Form(
                key: _formKey,
                child: Column(
                  children: [
                    Text(
                      'Welcome to Encanto',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: ResponsiveHelper.getWidth(context) * .020,
                      ),
                    ),
                    SizedBox(
                      height: ResponsiveHelper.getHeight(context) * .140,
                    ),
                    Textformwidget(
                      hint: 'User name',
                      radius: ResponsiveHelper.getWidth(context) * .005,
                      prifix: Icon(
                        Icons.person,
                      ),
                      validation: (value) {
                        if (value!.isEmpty) {
                          return 'please enter value';
                        }
                        return null;
                      },
                    ),
                    SizedBox(
                      height: ResponsiveHelper.getHeight(context) * .140,
                    ),
                    Textformwidget(
                      hint: 'Password',
                      radius: ResponsiveHelper.getWidth(context) * .005,
                      prifix: Icon(
                        Icons.lock,
                      ),
                      validation: (value) {
                        if (value!.isEmpty) {
                          return 'please enter value';
                        }
                        return null;
                      },
                    ),
                    SizedBox(
                      height: ResponsiveHelper.getHeight(context) * .110,
                    ),
                    // Containerwidget(
                    //   width: ResponsiveHelper.getWidth(context) * .140,
                    //   height: ResponsiveHelper.getHeight(context) * .080,
                    //   bgcolor: ColorsClass.webloggincolor,
                    //   text: 'text',
                    //   textcolor: ColorsClass.black,
                    //   calback: () {},
                    // ),

                    Container(
                      width: ResponsiveHelper.getWidth(context) * .140,
                      height: ResponsiveHelper.getHeight(context) * .080,
                      decoration: BoxDecoration(
                          color: ColorsClass.webloggincolor,
                          borderRadius: BorderRadius.circular(
                            ResponsiveHelper.getWidth(context) * .030,
                          )),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [Text('submit')],
                      ),
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
