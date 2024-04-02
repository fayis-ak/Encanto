import 'package:encanto/screens/mobile/event_screens/baby_shower.dart';
import 'package:encanto/screens/mobile/event_screens/birthday.dart';
import 'package:encanto/screens/mobile/event_screens/bridal_shower.dart';
import 'package:encanto/screens/mobile/event_screens/house_warming.dart';
import 'package:encanto/screens/mobile/event_screens/otherprogram.dart';
import 'package:encanto/screens/mobile/event_screens/party.dart';
import 'package:encanto/screens/mobile/event_screens/wedding.dart';
import 'package:encanto/utils/colors.dart';
import 'package:encanto/utils/image.dart';

import 'package:encanto/utils/size.dart';
import 'package:encanto/widgets/app_bar.dart';
import 'package:encanto/widgets/bottomdestination.dart';
import 'package:encanto/widgets/global/text.dart';
import 'package:encanto/widgets/global/textform_fieldwidget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class EventsScreen extends StatefulWidget {
  EventsScreen({super.key});

  @override
  State<EventsScreen> createState() => _EventsScreenState();
}

class _EventsScreenState extends State<EventsScreen> {
  final List<Color> _colors = [
    Color(0xFFF8C1AF),
    Color(0xFFFFDCB92),
    Color(0xFFFCDEEDC),
    Color(0xFFFE1B7E8),
    Color(0xFFFFF9371),
    Color(0xFFF8C1AF),
    Color(0xFFFFDCB92),
  ];

  final List<String> events = [
    'wedding',
    'Birthday',
    "House warming",
    'baby shower',
    'party',
    'Bridal shower',
    'Other program',
  ];

  final List<String> images = [
    Images.weddings,
    Images.weddings,
    Images.housewarming,
    Images.housewarming,
    Images.weddings,
    Images.housewarming,
    Images.weddings,
  ];

  int index = 0;

  List<Widget> screenRoutes = [
    WeddingSreen(),
    Birthday(),
    HouseWarming(),
    Babyshower(),
    Partyscreen(),
    BridalShower(),
    OtherProgram(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Appbarwidget(
          title: 'Events', icons: Icons.favorite, icons2: Icons.message),
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
                    radius: ResponsiveHelper.getWidth(context) * .020,
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
                return GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => screenRoutes[index],
                        ));
                  },
                  child: Row(
                    children: [
                      Container(
                        width: ResponsiveHelper.getWidth(context) * .999,
                        height: ResponsiveHelper.getHeight(context) * .140,
                        color: _colors[index],
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            SizedBox(
                              width: ResponsiveHelper.getWidth(context) * .001,
                            ),
                            Textwidget(
                              text: events[index],
                              fontsize:
                                  ResponsiveHelper.getWidth(context) * .050,
                            ),
                            Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                      topRight: Radius.elliptical(5, 5))),
                              child: Image.asset(
                                images[index],
                                errorBuilder: (context, error, stackTrace) {
                                  return Icon(
                                      Icons.image_not_supported_outlined);
                                },
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                );
              },
              separatorBuilder: (context, index) => SizedBox(
                height: 4,
              ),
              itemCount: 7,
            ),
          ),
        ],
      ),
      // bottomNavigationBar: BottomNavigationBarScreen(
      //   currentIndex: index,
      //   onTap: (index) => setState(() => this.index = index),

      // ),
    );
  }
}
