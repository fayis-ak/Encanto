import 'package:encanto/utils/colors.dart';
import 'package:encanto/utils/size.dart';
import 'package:encanto/widgets/appbarwidget.dart';
import 'package:encanto/widgets/global/textform_fieldwidget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SearchScreen extends StatelessWidget {
  SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: ResponsiveHelper.getHeight(context) / 1,
      child: Column(
        children: [
          Tappbar(
            autoleading: false,
            titleicone: Icons.home,
            title: 'Search',
            icons: Icons.favorite,
            icons2: Icons.message,
          ),
          SizedBox(
            height: ResponsiveHelper.getHeight(context) * .050,
          ),
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: ResponsiveHelper.getWidth(context) * .030,
            ),
            child: Column(
              children: [
                Textformwidget(
                  fillcolor: ColorsClass.whiteColor,
                  hint: 'Search by loacation',
                  radius: ResponsiveHelper.getWidth(context) * .040,
                  prifix: Icon(Icons.search),
                  sufix: Icon(Icons.location_on_outlined),
                  hintcolor: ColorsClass.black,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
