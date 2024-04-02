import 'package:encanto/screens/mobile/event_screens/screens/widgets/container.dart';
import 'package:encanto/utils/colors.dart';
import 'package:encanto/utils/size.dart';
import 'package:encanto/widgets/app_bar.dart';
import 'package:encanto/widgets/global/divider.dart';
 
import 'package:flutter/material.dart';

class PlanningAndDecor extends StatelessWidget {
  const PlanningAndDecor({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.blue.shade200,
        child: Column(
          children: [
            Appbarwidget(
              title: 'Planing and decor',
              bgcolor: ColorsClass.venuuesbgcolor,
            ),
            Dividerwidget(),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: ResponsiveHelper.getWidth(context) * .050,
              ),
              child: Column(
                children: [
                  SizedBox(
                    height: ResponsiveHelper.getHeight(context) * .040,
                  ),
                  VenuesContainerWidget(
                    title: 'Wedding Planners',
                  ),
                  SizedBox(
                    height: ResponsiveHelper.getHeight(context) * .040,
                  ),
                  VenuesContainerWidget(
                    title: 'Decrators',
                  ),
                  SizedBox(
                    height: ResponsiveHelper.getHeight(context) * .040,
                  ),
                  VenuesContainerWidget(
                    title: 'Small Function Decor',
                  ),
                  SizedBox(
                    height: ResponsiveHelper.getHeight(context) * .040,
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
