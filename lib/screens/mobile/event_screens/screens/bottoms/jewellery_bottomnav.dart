import 'package:encanto/screens/mobile/bottomnavigation/accound_scree.dart';
import 'package:encanto/screens/mobile/bottomnavigation/notification_screen.dart';
import 'package:encanto/screens/mobile/bottomnavigation/offer_screen.dart';
import 'package:encanto/screens/mobile/bottomnavigation/search_screen.dart';
import 'package:encanto/screens/mobile/drawer/vender_screen.dart';
import 'package:encanto/screens/mobile/event_screens/screens/jewelleryandacc.dart';
import 'package:encanto/screens/mobile/event_screens/screens/venues.dart';
import 'package:encanto/widgets/bottomdestination.dart';
import 'package:flutter/material.dart';

class JewelleryAndAccBottomnav extends StatefulWidget {
  const JewelleryAndAccBottomnav({super.key});

  @override
  State<JewelleryAndAccBottomnav> createState() => _JewelleryAndAccBottomnavState();
}

final List<Widget> _pages = [
  jewelleryAndAcc(),
  SearchScreen(),
  NotificationScreen(),
  OfferScreen(),
  AccoundScreen(),
];

class _JewelleryAndAccBottomnavState extends State<JewelleryAndAccBottomnav> {
  int index = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[index],
      bottomNavigationBar: BottomNavigationBarScreen(
        currentIndex: index,
        onTap: (index) => setState(() => this.index = index),
      ),
    );
  }
}
