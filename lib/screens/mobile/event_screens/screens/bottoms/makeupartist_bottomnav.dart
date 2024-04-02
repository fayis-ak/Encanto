import 'package:encanto/screens/mobile/bottomnavigation/accound_scree.dart';
import 'package:encanto/screens/mobile/bottomnavigation/notification_screen.dart';
import 'package:encanto/screens/mobile/bottomnavigation/offer_screen.dart';
import 'package:encanto/screens/mobile/bottomnavigation/search_screen.dart';
import 'package:encanto/screens/mobile/event_screens/screens/Makeupartist.dart';

import 'package:encanto/widgets/bottomdestination.dart';
import 'package:flutter/material.dart';

class MakeupArtistBottomNav extends StatefulWidget {
  const MakeupArtistBottomNav({super.key});

  @override
  State<MakeupArtistBottomNav> createState() => _MakeupArtistBottomNavState();
}

final List<Widget> _pages = [
  MakeupArtist(),
  SearchScreen(),
  NotificationScreen(),
  OfferScreen(),
  AccoundScreen(),
];

class _MakeupArtistBottomNavState extends State<MakeupArtistBottomNav> {
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
