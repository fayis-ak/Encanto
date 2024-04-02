import 'package:encanto/screens/mobile/bottom_nav.dart';
import 'package:encanto/utils/colors.dart';
import 'package:encanto/utils/size.dart';
import 'package:encanto/widgets/global/container.dart';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AllowNotificationScreen extends StatelessWidget {
  const AllowNotificationScreen({super.key});

  Widget containerWidget(BuildContext context, String text) {
    return Container(
      width: ResponsiveHelper.getWidth(context) * .80,
      height: ResponsiveHelper.getHeight(context) * .090,
      decoration: BoxDecoration(
          color: ColorsClass.notificationcontainer,
          borderRadius: BorderRadius.circular(
            ResponsiveHelper.getWidth(context) * .040,
          )),
      child: Column(
        children: [
          SizedBox(
            height: ResponsiveHelper.getHeight(context) * .010,
          ),
          Text(
            text,
            style: GoogleFonts.notoSansMro(),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorsClass.logginBg,
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: ResponsiveHelper.getHeight(context) * .140,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Allow notifications on the next\n screen for:',
                  style: GoogleFonts.acme(
                    fontSize: ResponsiveHelper.getWidth(context) * .070,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: ResponsiveHelper.getHeight(context) * .020,
            ),
            containerWidget(context,
                'Alert of new message from\n suppliers you\'ve contacted '),
            SizedBox(
              height: ResponsiveHelper.getHeight(context) * .050,
            ),
            containerWidget(context, 'Epic offer for your event'),
            SizedBox(
              height: ResponsiveHelper.getHeight(context) * .050,
            ),
            containerWidget(
                context, 'Notifications of news and\n update in the app.'),
            SizedBox(
              height: ResponsiveHelper.getHeight(context) * .150,
            ),
            Text(
              'You can change this option later in your\n Settings',
              style: TextStyle(
                fontSize: ResponsiveHelper.getWidth(context) * .050,
              ),
            ),
            SizedBox(
              height: ResponsiveHelper.getHeight(context) * .010,
            ),
            Containerwidget(
              height: ResponsiveHelper.getHeight(context) * .070,
              width: ResponsiveHelper.getWidth(context) * .8,
              bgcolor: ColorsClass.notificationbutton,
              text: 'next',
              textcolor: ColorsClass.whiteColor,
              calback: () {
                Navigator.push(context, MaterialPageRoute(
                  builder: (context) {
                    return BottomNav();
                  },
                ));
              },
            ),
            SizedBox(
              height: ResponsiveHelper.getHeight(context) * .010,
            ),
            Text(
              'privacy Policy',
              style: GoogleFonts.abel(),
            )
          ],
        ),
      ),
    );
  }
}
