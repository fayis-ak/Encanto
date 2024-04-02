import 'package:encanto/screens/mobile/event_screens/screens/widgets/container.dart';
import 'package:encanto/utils/colors.dart';
import 'package:encanto/utils/size.dart';
import 'package:encanto/widgets/app_bar.dart';
import 'package:encanto/widgets/global/divider.dart';
import 'package:encanto/widgets/global/text.dart';
import 'package:flutter/material.dart';

class Photographers extends StatelessWidget {
  const Photographers({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Color.fromRGBO(253, 203, 146, 1),
        child: Column(
          children: [
            Appbarwidget(
              title: 'Photographerse',
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
                    title: 'Photograperse',
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
