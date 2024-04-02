import 'dart:developer';

import 'package:encanto/utils/colors.dart';
import 'package:encanto/utils/size.dart';
import 'package:encanto/widgets/app_bar.dart';
import 'package:encanto/widgets/global/container.dart';
import 'package:encanto/widgets/global/divider.dart';
import 'package:encanto/widgets/global/text.dart';
import 'package:flutter/material.dart';

class ComplaintsScreen extends StatelessWidget {
  ComplaintsScreen({super.key});
  final _formKey = GlobalKey<FormState>();

  TextEditingController complaintscontroller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Appbarwidget(
        title: 'Complaitns',
        icons: Icons.favorite,
        icons2: Icons.message,
      ),
      body: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              Dividerwidget(),
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: ResponsiveHelper.getWidth(context) * .050,
                ),
                child: Column(
                  children: [
                    Textwidget(
                      text: 'Enter your Complaints !',
                      fontsize: ResponsiveHelper.getWidth(context) * .080,
                    ),
                    SizedBox(
                      height: ResponsiveHelper.getHeight(context) * .050,
                    ),
                    Container(
                      width: double.infinity,
                      height: ResponsiveHelper.getHeight(context) * .200,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: ColorsClass.bordingscreen,
                        ),
                      ),
                      child: TextFormField(
                        controller: complaintscontroller,
                        keyboardType: TextInputType.multiline,
                        maxLines: 8,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'enter here...',
                        ),
                        validator: (value) {
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
                    Row(
                      children: [
                        SizedBox(
                          width: ResponsiveHelper.getWidth(context) * .450,
                        ),
                        Containerwidget(
                          width: ResponsiveHelper.getWidth(context) * .3,
                          height: ResponsiveHelper.getHeight(context) * .050,
                          bgcolor: ColorsClass.notificationbutton,
                          text: 'Send',
                          textcolor: ColorsClass.black,
                          calback: () {
                            if (_formKey.currentState!.validate()) {
                              log('valid ');
                            } else {
                              log('null');
                            }
                          },
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
