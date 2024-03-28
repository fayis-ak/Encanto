import 'package:encanto/screens/bottom_nav.dart';
import 'package:encanto/utils/colors.dart';
import 'package:encanto/utils/image.dart';

import 'package:encanto/utils/size.dart';
import 'package:encanto/widgets/app_bar.dart';
import 'package:encanto/widgets/global/text.dart';
import 'package:encanto/widgets/global/textform_fieldwidget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class EventsScreen extends StatelessWidget {
  EventsScreen({super.key});

  final List<Color> _colors = [
    Color(0xFFF8C1AF),
    Color(0xFFFFDCB92),
    Color(0xFFFCDEEDC),
    Color(0xFFFE1B7E8),
    Color(0xFFFFF9371),
  ];

  final List<String> events = [
    'wedding',
    'Birthday',
    "House warming",
    'baby shower',
    'd',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // bottomNavigationBar: BottomNav(),
      appBar: appBar(context),
      body: Column(
        children: [
          Divider(
            thickness: 1,
            color: ColorsClass.black,
          ),
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: ResponsiveHelper.getWidth(context) * .050,
            ),
            child: Column(
              children: [
                SizedBox(
                  height: ResponsiveHelper.getHeight(context) * .090,
                  child: Textformwidget(
                    fillcolor: Colors.grey.shade100,
                    prifix: Icon(Icons.search),
                    hint: 'Search your events',
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: ResponsiveHelper.getHeight(context) * .020,
          ),
          Expanded(
            child: ListView.separated(
              itemBuilder: (context, index) {
                return Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: ResponsiveHelper.getWidth(context) * .020,
                    ),
                    child: Container(
                      child: Row(
                        children: [
                          Container(
                            width:
                                //  double.infinity
                                ResponsiveHelper.getWidth(context) * .950,
                            height: ResponsiveHelper.getHeight(context) * .140,
                            color: _colors[index],
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                SizedBox(
                                  width: 20,
                                ),
                                Textwidget(
                                  text: events[index],
                                  fontsize:
                                      ResponsiveHelper.getWidth(context) * .050,
                                ),
                                Container(
                                    child: Image.asset(
                                  Images.weddings,
                                )),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ));
              },
              separatorBuilder: (context, index) => SizedBox(
                height: 4,
              ),
              itemCount: 5,
            ),
          ),
        ],
      ),
    );
  }
}

// ListTile(
//                         leading: Container(
//                           width: ResponsiveHelper.getWidth(context) * .700,
//                           height: ResponsiveHelper.getHeight(context) * .140,
//                           decoration: BoxDecoration(
//                             color: Colors.amber,
//                           ),
//                         ),
//                         trailing: Container(
//                           width: ResponsiveHelper.getWidth(context) * .140,
//                           height: ResponsiveHelper.getHeight(context) * .140,
//                           child: Image.asset(Images.hpcharity),
//                         ),
//                       ),