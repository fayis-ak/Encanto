import 'package:encanto/utils/colors.dart';
import 'package:encanto/utils/image.dart';
import 'package:encanto/utils/size.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

class VenuesContainerWidget extends StatelessWidget {
  final String title;
  const VenuesContainerWidget({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: ResponsiveHelper.getWidth(context) * .800,
      height: ResponsiveHelper.getHeight(context) * .060,
      decoration: BoxDecoration(
        color: ColorsClass.whiteColor,
        borderRadius: BorderRadius.circular(
          ResponsiveHelper.getWidth(context) * .040,
        ),
      ),
      child: Row(
        children: [
          SizedBox(
            width: ResponsiveHelper.getWidth(context) * .040,
          ),
          SvgPicture.asset(Images.venues),
          SizedBox(
            width: ResponsiveHelper.getWidth(context) * .060,
          ),
          Text(
            title,
            style: GoogleFonts.inter(
              fontSize: ResponsiveHelper.getWidth(context) * .050,
            ),
          )
        ],
      ),
    );
  }
}
