import 'dart:developer';

import 'package:encanto/auth/splash_screen/spalash_scren.dart';
import 'package:encanto/screens/drawer/settings.dart';
import 'package:encanto/screens/drawer/vender_screen.dart';
import 'package:encanto/utils/colors.dart';
import 'package:encanto/utils/image.dart';
import 'package:encanto/utils/size.dart';
import 'package:encanto/widgets/app_bar.dart';
import 'package:encanto/widgets/global/text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  Widget Drawerwid(BuildContext context) {
    return Drawer(
      width: ResponsiveHelper.getWidth(context) * .600,
      backgroundColor: ColorsClass.drawerbg,
      child: Container(
        child: ListView(
          children: [
            Column(
              children: [
                Container(
                  height: ResponsiveHelper.getHeight(context) * .200,
                  width: ResponsiveHelper.getWidth(context) * .250,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('assets/images/Ellipse 6.png')),
                      borderRadius: BorderRadius.circular(
                        ResponsiveHelper.getWidth(context) * .050,
                      )),
                ),
                Textwidget(
                  text: 'Anjal',
                  fontsize: ResponsiveHelper.getWidth(context) * .040,
                )
              ],
            ),
            ListTile(
              leading: Image.asset('assets/icon/vendor.png'),
              title: Textwidget(
                text: 'Vender',
                fontsize: ResponsiveHelper.getWidth(context) * .050,
              ),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => EventsScreen(),
                    ));
              },
            ),
            Divider(
              color: ColorsClass.black,
            ),
            ListTile(
              leading: Image.asset('assets/icon/settings.png'),
              title: Textwidget(
                text: 'Settings',
                fontsize: ResponsiveHelper.getWidth(context) * .050,
              ),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => SttingsDrawer(),
                    ));
              },
            ),
            Divider(
              color: ColorsClass.black,
            ),
            ListTile(
              leading: Image.asset('assets/icon/heart.png'),
              title: Textwidget(
                text: 'Favorite',
                fontsize: ResponsiveHelper.getWidth(context) * .050,
              ),
              onTap: () {},
            ),
            Divider(
              color: ColorsClass.black,
            ),
            ListTile(
              leading: Image.asset('assets/icon/about.png'),
              title: Textwidget(
                text: 'About us',
                fontsize: ResponsiveHelper.getWidth(context) * .050,
              ),
              onTap: () {},
            ),
            Divider(
              color: ColorsClass.black,
            ),
            ListTile(
              leading: Image.asset('assets/icon/complaints.png'),
              title: Textwidget(
                text: 'Complaints',
                fontsize: ResponsiveHelper.getWidth(context) * .050,
              ),
              onTap: () {},
            ),
            Divider(
              color: ColorsClass.black,
            ),
            ListTile(
              leading: Image.asset('assets/icon/review.png'),
              title: Textwidget(
                text: 'Review',
                fontsize: ResponsiveHelper.getWidth(context) * .050,
              ),
              onTap: () {},
            ),
            Divider(
              color: ColorsClass.black,
            ),
            ListTile(
              onTap: () {
                log('logout event');
                alertdialogwidget(context);
              },
              leading: Image.asset('assets/icon/logout.png'),
              title: Textwidget(
                text: 'Logout',
                fontsize: ResponsiveHelper.getWidth(context) * .050,
              ),
            ),
            Divider(
              color: ColorsClass.black,
            ),
            SizedBox(
              height: ResponsiveHelper.getHeight(context) * .050,
            ),
          ],
        ),
      ),
    );
  }

  void alertdialogwidget(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('Alert signout'),
        content: const Text('Are you sure '),
        actions: [
          ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text('No')),
          ElevatedButton(
              onPressed: () async {
                Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(
                      builder: (context) => SplashScreen(),
                    ),
                    (route) => false);
              },
              child: const Text('Yes'))
        ],
      ),
    );
  }

  PreferredSizeWidget appBar() {
    return AppBar(
      title: Row(
        children: [
          Icon(
            Icons.home,
          ),
          SizedBox(
            width: 10,
          ),
          Text('Home')
        ],
      ),
      actions: [
        Row(
          children: [
            Icon(Icons.favorite),
            SizedBox(
              width: 20,
            ),
            Icon(Icons.message),
            SizedBox(
              width: 20,
            ),
          ],
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawerwid(context),
      appBar: appBar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Divider(
              thickness: 1,
              color: ColorsClass.black,
            ),
            Container(
              width: double.infinity,
              height: ResponsiveHelper.getHeight(context) * .300,
              color: ColorsClass.bordingscreen,
              child: Column(
                children: [
                  Image.asset(
                    Images.boardImagePath,
                    width: ResponsiveHelper.getWidth(context) / 1,
                    height: ResponsiveHelper.getHeight(context) / 4,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: ResponsiveHelper.getHeight(context) * .080,
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: ResponsiveHelper.getWidth(context) * .050,
              ),
              child: Column(
                children: [
                  eventscharitycontainer(
                    image: Images.hpeventimg,
                    titile: 'Events',
                  ),
                  SizedBox(
                    height: ResponsiveHelper.getHeight(context) * .040,
                  ),
                  eventscharitycontainer(
                    image: Images.hpcharity,
                    titile: 'Events',
                  ),
                  SizedBox(
                    height: ResponsiveHelper.getHeight(context) * .020,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class eventscharitycontainer extends StatelessWidget {
  final String image;
  final String titile;

  const eventscharitycontainer({
    super.key,
    required this.image,
    required this.titile,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: ResponsiveHelper.getHeight(context) * .110,
      width: ResponsiveHelper.getWidth(context) * .8,
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.grey,
          ),
          BoxShadow(
            color: Colors.white70,
            spreadRadius: 5.0,
            blurRadius: 20.0,
            offset: Offset(2.0, 5.0),
          ),
        ],
        borderRadius: BorderRadius.circular(
          ResponsiveHelper.getWidth(context) * .020,
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
            width: ResponsiveHelper.getWidth(context) * .010,
          ),
          Textwidget(
            text: titile,
            fontsize: ResponsiveHelper.getWidth(context) * .110,
          ),
          Container(
            height: ResponsiveHelper.getHeight(context) * .110,
            width: ResponsiveHelper.getWidth(context) * .200,
            decoration: BoxDecoration(
              // color: Colors.black,
              borderRadius: BorderRadius.circular(
                ResponsiveHelper.getWidth(context) * .020,
              ),
            ),
            child: Image.asset(image),
          ),
        ],
      ),
    );
  }
}
