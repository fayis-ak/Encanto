import 'package:encanto/utils/size.dart';
import 'package:encanto/widgets/global/text.dart';
import 'package:flutter/material.dart';

class Appbarwidget extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final IconData? icons;
  final IconData? icons2;
  final Color? bgcolor;

  Appbarwidget({super.key, required this.title, this.icons, this.icons2, this.bgcolor});
  @override
  Size get preferredSize => AppBar().preferredSize;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: bgcolor,
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
        text: title,
        fontsize: ResponsiveHelper.getWidth(context) * .060,
      ),
      actions: [
        Row(
          children: [
            Icon(icons),
            SizedBox(
              width: 20,
            ),
            Icon(icons2),
            SizedBox(
              width: 20,
            ),
          ],
        ),
      ],
    );
  }
}
