import 'package:encanto/utils/size.dart';
import 'package:encanto/widgets/global/text.dart';
import 'package:flutter/material.dart';

class Tappbar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final IconData? titleicone;
  final IconData? icons;
  final IconData? icons2;
  final bool autoleading;
  final Widget? backbt;

  const Tappbar({
    super.key,
    required this.title,
    this.icons,
    this.icons2,
    this.titleicone,
    required this.autoleading,
    this.backbt,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: backbt,
      automaticallyImplyLeading: autoleading,
      title: Row(
        children: [
          Icon(titleicone),
          SizedBox(
            width: 10,
          ),
          Textwidget(
            text: title,
            fontsize: ResponsiveHelper.getWidth(context) * .060,
          ),
        ],
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

  @override
  Size get preferredSize => AppBar().preferredSize;
}
