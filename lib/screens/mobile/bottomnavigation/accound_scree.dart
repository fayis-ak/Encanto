import 'package:encanto/utils/colors.dart';
import 'package:encanto/utils/image.dart';
import 'package:encanto/utils/size.dart';
import 'package:encanto/widgets/appbarwidget.dart';
import 'package:encanto/widgets/global/divider.dart';
import 'package:encanto/widgets/global/listtile.dart';
import 'package:encanto/widgets/global/text.dart';
import 'package:flutter/material.dart';

class AccoundScreen extends StatelessWidget {
  const AccoundScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Tappbar(
        titleicone: Icons.home,
        title: 'Account',
        icons: Icons.favorite,
        icons2: Icons.message,
        autoleading: false,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Dividerwidget(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(
                  radius: ResponsiveHelper.getWidth(context) * .150,
                  backgroundColor: ColorsClass.black,
                  child: CircleAvatar(
                    radius: ResponsiveHelper.getWidth(context) * .140,
                    child: Image.asset(Images.accountimg),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: ResponsiveHelper.getHeight(context) * .020,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Textwidget(
                  text: 'Anjal',
                  fontsize: ResponsiveHelper.getWidth(context) * .060,
                ),
                SizedBox(
                  width: ResponsiveHelper.getWidth(context) * .020,
                ),
                Container(
                  width: ResponsiveHelper.getWidth(context) * .080,
                  height: ResponsiveHelper.getHeight(context) * .050,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(
                      ResponsiveHelper.getWidth(context) * .005,
                    ),
                    border: Border.all(color: Colors.black),
                  ),
                  child: Column(
                    children: [
                      Text('edit'),
                      Icon(
                        Icons.edit,
                        size: 10,
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Column(
              children: [
                Listtilewidget(title: 'Mobile number', subtitile: '7994413795'),
                Dividerwidget(),
                Listtilewidget(
                    title: 'Emailid', subtitile: 'anjialkoranth@gmail.com'),
                Dividerwidget(),
                Listtilewidget(title: 'Place', subtitile: 'Perinthalmanna'),
                Dividerwidget(),
                Listtilewidget(title: 'Age', subtitile: '23'),
                Dividerwidget(),
                SizedBox(
                  height: ResponsiveHelper.getHeight(context) * .050,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
