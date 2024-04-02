import 'package:encanto/screens/mobile/bottomnavigation/accound_scree.dart';
import 'package:encanto/screens/mobile/bottomnavigation/notification_screen.dart';
import 'package:encanto/screens/mobile/bottomnavigation/offer_screen.dart';
import 'package:encanto/screens/mobile/bottomnavigation/search_screen.dart';
import 'package:encanto/screens/mobile/drawer/vender_screen.dart';
import 'package:encanto/screens/mobile/event_screens/screens/venues.dart';
import 'package:encanto/widgets/bottomdestination.dart';
import 'package:flutter/material.dart';

class venuuesBottomnav extends StatefulWidget {
  const venuuesBottomnav({super.key});

  @override
  State<venuuesBottomnav> createState() => _venuuesBottomnavState();
}

final List<Widget> _pages = [
  VenuesScreen(),
  SearchScreen(),
  NotificationScreen(),
  OfferScreen(),
  AccoundScreen(),
];

class _venuuesBottomnavState extends State<venuuesBottomnav> {
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
