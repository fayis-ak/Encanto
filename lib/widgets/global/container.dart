import 'package:encanto/utils/colors.dart';
import 'package:encanto/utils/size.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Containerwidget extends StatelessWidget {
  final double width;
  final double height;
  final Color bgcolor;
  final String text;
  final Color textcolor;
  final VoidCallback calback;
  final double? radius;
  const Containerwidget({
    super.key,
    required this.width,
    required this.height,
    required this.bgcolor,
    required this.text,
    required this.textcolor,
    required this.calback,
    this.radius,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: calback,
      child: Container(
        width: width,
        height: height,
        decoration: BoxDecoration(
          color: bgcolor,
          borderRadius:
              BorderRadius.circular(ResponsiveHelper.getWidth(context) * .030),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              text,
              style: GoogleFonts.tinos(
                fontSize: ResponsiveHelper.getWidth(context) * .050,
                fontWeight: FontWeight.bold,
                color: textcolor,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
