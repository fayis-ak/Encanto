import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

// class Textformwidget extends StatelessWidget {
//   final Icon? sufix;
//   final Icon? prifix;
//   final String hint;
//   final int? maxlength;
//   final TextEditingController? controller;
//   final FormFieldValidator<String>? validation;
//   const Textformwidget({
//     super.key,
//     this.sufix,
//     this.prifix,
//     required this.hint,
//     this.controller,
//     this.validation,
//     this.maxlength,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return TextFormField(
//       inputFormatters: [
//         LengthLimitingTextInputFormatter(maxlength),
//       ],
//       maxLength: maxlength,
//       textInputAction: TextInputAction.next,
//       validator: validation,
//       controller: controller,
//       decoration: InputDecoration(
//         hintText: hint,
//         hintStyle: GoogleFonts.tinos(color: Colors.grey),
//         suffixIcon: sufix,
//         prefix: prifix,
//         fillColor: ColorsClass.whiteColor,
//         filled: true,
//         border: OutlineInputBorder(
//           borderRadius: BorderRadius.circular(
//             ResponsiveHelper.getWidth(context) * .030,
//           ),
//         ),
//       ),
//     );
//   }
// }

///
// ok

class Textformwidget extends StatelessWidget {
  final Icon? prifix;
  final String hint;
  final Icon? sufix;
  final int? maxlenght;
  final Color? fillcolor;
  final TextEditingController? controller;
  final FormFieldValidator<String>? validation;
  final Color? hintcolor;
  final double radius;
  final EdgeInsetsGeometry? contentpadding;

  const Textformwidget({
    super.key,
    this.prifix,
    required this.hint,
    this.sufix,
    this.controller,
    this.validation,
    this.maxlenght,
    this.fillcolor,
    required this.radius,
    this.hintcolor, this.contentpadding,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      
      autovalidateMode: AutovalidateMode.onUserInteraction,
      inputFormatters: [
        LengthLimitingTextInputFormatter(maxlenght),
      ],
      controller: controller,
      validator: validation,
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(
        contentPadding: contentpadding,
        fillColor: fillcolor,
        filled: true,
        hintText: hint,
        hintStyle: GoogleFonts.tinos(
          color: hintcolor,
        ),
        prefixIcon: prifix,
        suffixIcon: sufix,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(
            radius,
          ),
        ),
      ),
    );
  }
}
