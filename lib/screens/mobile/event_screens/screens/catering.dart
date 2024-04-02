import 'package:encanto/screens/mobile/event_screens/screens/widgets/container.dart';
import 'package:encanto/utils/colors.dart';
import 'package:encanto/utils/size.dart';
import 'package:encanto/widgets/app_bar.dart';
import 'package:encanto/widgets/global/divider.dart';

import 'package:flutter/material.dart';

class Catering extends StatelessWidget {
  const Catering({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blue.shade200,
      child: Column(
        children: [
          Appbarwidget(
            title: 'Catering',
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
                  title: 'Western Dishes',
                ),
                SizedBox(
                  height: ResponsiveHelper.getHeight(context) * .040,
                ),
                VenuesContainerWidget(
                  title: 'Nadan Sadhya',
                ),
                SizedBox(
                  height: ResponsiveHelper.getHeight(context) * .040,
                ),
                VenuesContainerWidget(
                  title: 'Hyderbady Dishes',
                ),
                SizedBox(
                  height: ResponsiveHelper.getHeight(context) * .040,
                ),
                VenuesContainerWidget(
                  title: 'Biriyani Dishes',
                ),
                SizedBox(
                  height: ResponsiveHelper.getHeight(context) * .040,
                ),
                VenuesContainerWidget(
                  title: 'other snacks',
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
