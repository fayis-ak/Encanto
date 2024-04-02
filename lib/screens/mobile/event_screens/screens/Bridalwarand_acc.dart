import 'package:encanto/screens/mobile/event_screens/screens/widgets/container.dart';
import 'package:encanto/utils/colors.dart';
import 'package:encanto/utils/size.dart';
import 'package:encanto/widgets/app_bar.dart';
import 'package:encanto/widgets/global/divider.dart';

import 'package:flutter/material.dart';

class Bridalwearscreen extends StatelessWidget {
  const Bridalwearscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Color.fromRGBO(217, 194, 167, 1),
        child: Column(
          children: [
            Appbarwidget(
              title: 'Bridal Wear And Accesories',
              bgcolor: ColorsClass.venuuesbgcolor,
              icons: Icons.favorite,
              icons2: Icons.message,
            ),
            const Dividerwidget(),
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
                    title: 'Bridal Lehengas',
                  ),
                  SizedBox(
                    height: ResponsiveHelper.getHeight(context) * .040,
                  ),
                  VenuesContainerWidget(
                    title: 'Kanjeevaram/SilksSarees',
                  ),
                  SizedBox(
                    height: ResponsiveHelper.getHeight(context) * .040,
                  ),
                  VenuesContainerWidget(
                    title: 'Wedding Gowns',
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
