import 'package:encanto/utils/size.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

class Textwidget extends StatelessWidget {
  final String text;
  final double fontsize;
  final Color? color;
  final FontWeight? fontWeight;

  const Textwidget(
      {super.key,
      required this.text,
      required this.fontsize,
      this.color,
      this.fontWeight});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: GoogleFonts.tinos(
        fontWeight: fontWeight,
        fontSize: fontsize,
        color: color,
      ),
    );
  }
}
