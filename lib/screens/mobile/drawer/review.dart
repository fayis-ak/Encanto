import 'dart:developer';
import 'package:encanto/utils/colors.dart';
import 'package:encanto/utils/size.dart';
import 'package:encanto/widgets/app_bar.dart';
import 'package:encanto/widgets/global/container.dart';
import 'package:encanto/widgets/global/divider.dart';
import 'package:encanto/widgets/global/text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class ReviewScreen extends StatefulWidget {
  ReviewScreen({super.key});

  @override
  State<ReviewScreen> createState() => _ReviewScreenState();
}

class _ReviewScreenState extends State<ReviewScreen> {
 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Appbarwidget(
        title: 'Review',
        icons: Icons.favorite,
        icons2: Icons.message,
      ),
      body: SingleChildScrollView(
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
                    text: 'Enter your review and\n Experience !',
                    fontsize: ResponsiveHelper.getWidth(context) * .080,
                  ),
                  RatingBar.builder(
                    initialRating: 3,
                    minRating: 1,
                    direction: Axis.horizontal,
                    itemPadding: EdgeInsets.symmetric(
                        horizontal: ResponsiveHelper.getWidth(context) * .020),
                    itemBuilder: (context, index) => Icon(
                      Icons.star,
                      color: Colors.amber,
                    ),
                    onRatingUpdate: (value) {
                      log(value.toString());
                    },
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
                      keyboardType: TextInputType.multiline,
                      maxLines: 8,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'enter here...',
                      ),
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
                        calback: () {},
                      ),
                    ],
                  ),
                  SizedBox(
                    height: ResponsiveHelper.getHeight(context) * .100,
                  ),
                  Textwidget(
                    text: 'Thanku you for your valuable\n review',
                    fontsize: ResponsiveHelper.getWidth(context) * .050,
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
