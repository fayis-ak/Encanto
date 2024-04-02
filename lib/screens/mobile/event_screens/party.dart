import 'package:encanto/utils/image.dart';
import 'package:encanto/utils/size.dart';
import 'package:encanto/widgets/appbarwidget.dart';
import 'package:encanto/widgets/global/divider.dart';
import 'package:encanto/widgets/global/text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Partyscreen extends StatelessWidget {
  Partyscreen({super.key});

  final List<Color> _colors = [
    Color(0xFFF8C1AF),
    Color(0xFFFFDCB92),
    Color(0xFFFCDEEDC),
    Color(0xFFFE1B7E8),
    Color(0xFFFFF9371),
  ];

  final List<String> events = [
    'Venues',
    'Photographers',
    "Catering",
    'Planning and Decor',
    'Jewellery and  accessories',
  ];
  List<Widget> screenRoutes = [
    // WeddingSreen(),
    // WeddingSreen(),
  ];
  final List<String> images = [
    Images.weddings,
    Images.weddings,
    Images.housewarming,
    Images.housewarming,
    Images.weddings,
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
        title: 'Party',
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
                    // Navigator.push(
                    //     context,
                    //     MaterialPageRoute(
                    //       builder: (context) => screenRoutes[index],
                    //     ));
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
              itemCount: 5,
            ),
          ),
        ],
      ),
      // bottomNavigationBar: _buildBottomnavigation(),
    );
  }
}
