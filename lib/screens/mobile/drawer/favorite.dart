 
import 'package:encanto/screens/mobile/drawer/screens/favorite_screen.dart';
import 'package:encanto/utils/colors.dart';
import 'package:encanto/utils/size.dart';
import 'package:encanto/widgets/app_bar.dart';
import 'package:encanto/widgets/global/divider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
 

class Favoritescreen extends StatelessWidget {
  const Favoritescreen({super.key});

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
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: ResponsiveHelper.getWidth(context) * .020,
            ),
            child: Column(
              children: [
                SizedBox(
                  height: ResponsiveHelper.getHeight(context) * .050,
                ),
                Container(
                  width: double.infinity,
                  height: ResponsiveHelper.getHeight(context) * .300,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: ColorsClass.bordingscreen,
                    ),
                  ),
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: ResponsiveHelper.getWidth(context) * .020,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => FavoriteScreen(),
                                ));
                          },
                          child: Container(
                            width: ResponsiveHelper.getWidth(context) * .4,
                            height: ResponsiveHelper.getHeight(context) * .250,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(
                                ResponsiveHelper.getWidth(context) * .050,
                              ),
                            ),
                            child: Hero(
                              tag: 'hero-rectangle',
                              child: Image.asset(
                                'assets/images/favoritepic.png',
                                fit: BoxFit.fill,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: ResponsiveHelper.getWidth(context) * .030,
                        ),
                        Container(
                          width: ResponsiveHelper.getWidth(context) * .4,
                          height: ResponsiveHelper.getHeight(context) * .250,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(
                              ResponsiveHelper.getWidth(context) * .050,
                            ),
                          ),
                          child: Image.asset(
                            'assets/images/decorpng.png',
                            fit: BoxFit.fill,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
