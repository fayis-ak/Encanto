import 'package:encanto/screens/mobile/event_screens/screens/widgets/container.dart';
import 'package:encanto/utils/colors.dart';
import 'package:encanto/utils/size.dart';
import 'package:encanto/widgets/app_bar.dart';
import 'package:encanto/widgets/global/divider.dart';
import 'package:encanto/widgets/global/text.dart';
import 'package:flutter/material.dart';

class VenuesScreen extends StatelessWidget {
  const VenuesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.blue.shade200,
        child: Column(
          children: [
            Appbarwidget(
              title: 'Venues',
              bgcolor: ColorsClass.venuuesbgcolor,
            ),
            Dividerwidget(),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: ResponsiveHelper.getWidth(context) * .050,
              ),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Textwidget(
                        fontWeight: FontWeight.bold,
                        text: 'View All Venues',
                        fontsize: ResponsiveHelper.getWidth(context) * .060,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: ResponsiveHelper.getHeight(context) * .040,
                  ),
                  VenuesContainerWidget(
                    title: 'banquet Halls',
                  ),
                  SizedBox(
                    height: ResponsiveHelper.getHeight(context) * .040,
                  ),
                  VenuesContainerWidget(
                    title: 'Kalyana Mandapam',
                  ),
                  SizedBox(
                    height: ResponsiveHelper.getHeight(context) * .040,
                  ),
                  VenuesContainerWidget(
                    title: 'Resort',
                  ),
                  SizedBox(
                    height: ResponsiveHelper.getHeight(context) * .040,
                  ),
                  VenuesContainerWidget(
                    title: 'Small Function / Party Halls',
                  ),
                  SizedBox(
                    height: ResponsiveHelper.getHeight(context) * .040,
                  ),
                  VenuesContainerWidget(
                    title: '4 star & Above hotels',
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
