import 'package:encanto/screens/mobile/event_screens/bridal_shower.dart';
import 'package:encanto/screens/mobile/event_screens/screens/Makeupartist.dart';
import 'package:encanto/screens/mobile/event_screens/screens/bottoms/bridalwear_accessories.dart';
import 'package:encanto/screens/mobile/event_screens/screens/bottoms/catering_bottomnav.dart';
import 'package:encanto/screens/mobile/event_screens/screens/bottoms/groomwearacc_bottomnav.dart';
import 'package:encanto/screens/mobile/event_screens/screens/bottoms/jewellery_bottomnav.dart';
import 'package:encanto/screens/mobile/event_screens/screens/bottoms/makeupartist_bottomnav.dart';
import 'package:encanto/screens/mobile/event_screens/screens/bottoms/photographers_bottomnav.dart';
import 'package:encanto/screens/mobile/event_screens/screens/bottoms/planning_bottomnav.dart';
import 'package:encanto/screens/mobile/event_screens/screens/bottoms/venus_bottomnav.dart';
import 'package:encanto/screens/mobile/event_screens/screens/groomwear_acc.dart';
import 'package:encanto/utils/image.dart';
import 'package:encanto/utils/size.dart';
import 'package:encanto/widgets/appbarwidget.dart';
import 'package:encanto/widgets/global/divider.dart';
import 'package:encanto/widgets/global/text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class WeddingSreen extends StatefulWidget {
  WeddingSreen({super.key});

  @override
  State<WeddingSreen> createState() => _WeddingSreenState();
}

class _WeddingSreenState extends State<WeddingSreen> {
  final List<Color> _colors = [
    Color(0xFFF8C1AF),
    Color(0xFFFFDCB92),
    Color(0xFFFCDEEDC),
    Color(0xFFFE1B7E8),
    Color(0xFFFFF9371),
    Color(0xFFF8C1AF),
    Color(0xFFFFDCB92),
    Color(0xFFFCDEEDC),
    Color(0xFFFE1B7E8),
    Color(0xFFFFF9371),
    Color(0xFFFFF9371),
    Color(0xFFFFDCB92),
    Color(0xFFFCDEEDC),
    Color(0xFFFE1B7E8),
    Color(0xFFFFF9371),
    Color(0xFFFFF9371),
  ];

  final List<String> events = [
    'Venues',
    'Photographers',
    "Catering",
    'Planning and Decor',
    'Jewellery and  accessories',
    'Makeup artist',
    'Bridal wear and accessories',
    'Groom wear and accessories',
    'Rental',
    'mehndi artist',
    'Transportations',
    'Gift',
    'Cakes',
    'Music and dance',
    'Card makers',
    'pre wedding shoot',
  ];

  int index = 0;

  final List<String> images = [
    Images.weddings,
    Images.weddings,
    Images.housewarming,
    Images.housewarming,
    Images.weddings,
    Images.weddings,
    Images.weddings,
    Images.housewarming,
    Images.housewarming,
    Images.weddings,
    Images.weddings,
    Images.weddings,
    Images.housewarming,
    Images.housewarming,
    Images.weddings,
    Images.weddings,
  ];

  final List<Widget> _pages = [
    venuuesBottomnav(),
    Photographersbottomnav(),
    CateringBottomnav(),
    PlanningBottomNav(),
    JewelleryAndAccBottomnav(),
    MakeupArtistBottomNav(),
    BridalShowerBottomnav(),
    GroomWearBottomnav(),
    PlanningBottomNav(),
    PlanningBottomNav(),
    PlanningBottomNav(),
    PlanningBottomNav(),
    PlanningBottomNav(),
    PlanningBottomNav(),
    PlanningBottomNav(),
    PlanningBottomNav(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Tappbar(
        backbt: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back_ios),
        ),
        autoleading: true,
        title: 'Weddings',
        icons: Icons.favorite,
        icons2: Icons.message,
      ),
      body: Column(
        children: [
          Dividerwidget(),
          Expanded(
            child: ListView.separated(
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => _pages[index],
                      ),
                    );
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
                                  ResponsiveHelper.getWidth(context) * .045,
                            ),
                            Icon(Icons.arrow_forward_ios),
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
              itemCount: 16,
            ),
          ),
        ],
      ),
    );
  }
}
