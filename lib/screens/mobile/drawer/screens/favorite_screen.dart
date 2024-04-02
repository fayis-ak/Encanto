import 'dart:developer';

import 'package:encanto/utils/colors.dart';
import 'package:encanto/utils/image.dart';
import 'package:encanto/utils/size.dart';
import 'package:encanto/widgets/app_bar.dart';
import 'package:encanto/widgets/global/divider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';

class FavoriteScreen extends StatelessWidget {
  const FavoriteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Appbarwidget(
        title: 'Shortlist',
        icons2: Icons.favorite,
      ),
      body: Column(
        children: [
          Dividerwidget(),
          SizedBox(
            height: ResponsiveHelper.getHeight(context) * .050,
          ),
          Container(
              width: ResponsiveHelper.getWidth(context) * .900,
              height: ResponsiveHelper.getHeight(context) * .600,
              decoration: BoxDecoration(
                  border: Border.all(
                color: ColorsClass.bordingscreen,
              )),
              child: Column(
                children: [
                  SizedBox(
                    height: ResponsiveHelper.getHeight(context) * .020,
                  ),
                  Container(
                    width: ResponsiveHelper.getWidth(context) * .8,
                    height: ResponsiveHelper.getHeight(context) * .250,
                    child: Hero(
                      tag: 'hero-rectangle',
                      child: Image.asset(
                        'assets/images/shortlistfav.png',
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: ResponsiveHelper.getWidth(context) * .020,
                    ),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Text('kanjirampara,ucharkkadavu'),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('photomax studio'),
                            GestureDetector(
                                onTap: () {
                                  log('delete favorte');
                                },
                                child: Icon(Icons.delete)),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('photo + video'),
                          ],
                        ),
                        SizedBox(
                          height: ResponsiveHelper.getHeight(context) * .020,
                        ),
                        Row(
                          children: [
                            SvgPicture.asset(
                              'assets/images/price.svg',
                            ),
                            SizedBox(
                              width: ResponsiveHelper.getWidth(context) * .010,
                            ),
                            Text(
                              '8000',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize:
                                    ResponsiveHelper.getWidth(context) * .050,
                              ),
                            ),
                            SizedBox(
                              width: ResponsiveHelper.getWidth(context) * .010,
                            ),
                            Text('per day'),
                            SizedBox(
                              width: ResponsiveHelper.getWidth(context) * .010,
                            ),
                          ],
                        ),
                        SizedBox(
                          height: ResponsiveHelper.getHeight(context) * .040,
                        ),
                        Row(
                          children: [
                            Container(
                              height:
                                  ResponsiveHelper.getHeight(context) * .070,
                              width: ResponsiveHelper.getWidth(context) * .65,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(
                                  ResponsiveHelper.getWidth(context) * .040,
                                ),
                                border: Border.all(
                                  color: ColorsClass.bordingscreen,
                                ),
                              ),
                              child: Row(
                                children: [
                                  SizedBox(
                                    width: ResponsiveHelper.getWidth(context) *
                                        .080,
                                  ),
                                  SvgPicture.asset(
                                    'assets/images/message.svg',
                                  ),
                                  SizedBox(
                                    width: ResponsiveHelper.getWidth(context) *
                                        .010,
                                  ),
                                  Text(
                                    'Message',
                                    style: TextStyle(
                                      color: ColorsClass.bordingscreen,
                                    ),
                                  )
                                ],
                              ),
                            ),
                            SizedBox(
                              width: ResponsiveHelper.getWidth(context) * .030,
                            ),
                            Container(
                              height:
                                  ResponsiveHelper.getHeight(context) * .070,
                              width: ResponsiveHelper.getWidth(context) * .150,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(
                                  ResponsiveHelper.getWidth(context) * .050,
                                ),
                                border: Border.all(
                                  color: ColorsClass.black,
                                ),
                              ),
                              child: Image.asset(
                                Images.phone,
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  )
                ],
              )),
        ],
      ),
    );
  }
}
