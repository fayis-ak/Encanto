import 'package:encanto/screens/mobile/bottomnavigation/accound_scree.dart';
import 'package:encanto/screens/mobile/bottomnavigation/notification_screen.dart';
import 'package:encanto/screens/mobile/bottomnavigation/offer_screen.dart';
import 'package:encanto/screens/mobile/bottomnavigation/search_screen.dart';
import 'package:encanto/screens/mobile/event_screens/screens/photographers.dart';

import 'package:encanto/widgets/bottomdestination.dart';
import 'package:flutter/material.dart';

class Photographersbottomnav extends StatefulWidget {
  const Photographersbottomnav({super.key});

  @override
  State<Photographersbottomnav> createState() => _PhotographersbottomnavState();
}

final List<Widget> _pages = [
  Photographers(),
  SearchScreen(),
  NotificationScreen(),
  OfferScreen(),
  AccoundScreen(),
];

class _PhotographersbottomnavState extends State<Photographersbottomnav> {
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
