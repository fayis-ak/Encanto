import 'package:encanto/screens/mobile/bottomnavigation/accound_scree.dart';
import 'package:encanto/screens/mobile/bottomnavigation/notification_screen.dart';
import 'package:encanto/screens/mobile/bottomnavigation/offer_screen.dart';
import 'package:encanto/screens/mobile/bottomnavigation/search_screen.dart';
import 'package:encanto/screens/mobile/drawer/vender_screen.dart';
import 'package:encanto/screens/mobile/event_screens/screens/catering.dart';
import 'package:encanto/screens/mobile/event_screens/screens/venues.dart';
import 'package:encanto/widgets/bottomdestination.dart';
import 'package:flutter/material.dart';

class CateringBottomnav extends StatefulWidget {
  const CateringBottomnav({super.key});

  @override
  State<CateringBottomnav> createState() => _CateringBottomnavState();
}

final List<Widget> _pages = [
  Catering(),
  SearchScreen(),
  NotificationScreen(),
  OfferScreen(),
  AccoundScreen(),
];

class _CateringBottomnavState extends State<CateringBottomnav> {
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
