import 'package:encanto/utils/size.dart';
import 'package:encanto/widgets/global/text.dart';
import 'package:flutter/material.dart';

PreferredSizeWidget appBar(BuildContext context) {
  return AppBar(
    automaticallyImplyLeading: false,
    leading: GestureDetector(
      onTap: () {
        Navigator.pop(context);
      },
      child: Icon(
        Icons.arrow_back_ios,
      ),
    ),
    title: Textwidget(
      text: 'Events',
      fontsize: ResponsiveHelper.getWidth(context) * .060,
    ),
    actions: [
      Row(
        children: [
          Icon(Icons.favorite),
          SizedBox(
            width: 20,
          ),
          Icon(Icons.message),
          SizedBox(
            width: 20,
          ),
        ],
      ),
    ],
  );
}
