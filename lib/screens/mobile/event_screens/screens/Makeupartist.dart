import 'package:encanto/screens/mobile/event_screens/screens/widgets/container.dart';
import 'package:encanto/utils/colors.dart';
import 'package:encanto/utils/size.dart';
import 'package:encanto/widgets/app_bar.dart';
import 'package:encanto/widgets/global/divider.dart';
import 'package:encanto/widgets/global/text.dart';
import 'package:flutter/material.dart';

class MakeupArtist extends StatelessWidget {
  const MakeupArtist({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.blue.shade200,
        child: Column(
          children: [
            Appbarwidget(
              title: 'MakupArtist',
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
                    title: 'Bridal Makeup',
                  ),
                  SizedBox(
                    height: ResponsiveHelper.getHeight(context) * .040,
                  ),
                  VenuesContainerWidget(
                    title: 'Groom Makeup',
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
