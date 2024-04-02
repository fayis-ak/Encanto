import 'package:encanto/screens/mobile/bottomnavigation/accound_scree.dart';
import 'package:encanto/screens/mobile/bottomnavigation/notification_screen.dart';
import 'package:encanto/screens/mobile/bottomnavigation/offer_screen.dart';
import 'package:encanto/screens/mobile/bottomnavigation/search_screen.dart';
import 'package:encanto/screens/mobile/event_screens/bridal_shower.dart';
import 'package:encanto/screens/mobile/event_screens/screens/Bridalwarand_acc.dart';
import 'package:encanto/screens/mobile/event_screens/screens/Makeupartist.dart';

import 'package:encanto/widgets/bottomdestination.dart';
import 'package:flutter/material.dart';

class BridalShowerBottomnav extends StatefulWidget {
  const BridalShowerBottomnav({super.key});

  @override
  State<BridalShowerBottomnav> createState() => _BridalShowerBottomnavState();
}

final List<Widget> _pages = [
  Bridalwearscreen(),
  SearchScreen(),
  NotificationScreen(),
  OfferScreen(),
  AccoundScreen(),
];

class _BridalShowerBottomnavState extends State<BridalShowerBottomnav> {
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
