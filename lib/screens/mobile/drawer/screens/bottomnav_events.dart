import 'package:encanto/screens/mobile/bottomnavigation/accound_scree.dart';
import 'package:encanto/screens/mobile/bottomnavigation/notification_screen.dart';
import 'package:encanto/screens/mobile/bottomnavigation/offer_screen.dart';
import 'package:encanto/screens/mobile/bottomnavigation/search_screen.dart';
import 'package:encanto/screens/mobile/drawer/vender_screen.dart';
import 'package:encanto/widgets/bottomdestination.dart';
import 'package:flutter/material.dart';

class EventsBottomnav extends StatefulWidget {
  const EventsBottomnav({super.key});

  @override
  State<EventsBottomnav> createState() => _EventsBottomnavState();
}

final List<Widget> _pages = [
  EventsScreen(),
  SearchScreen(),
  NotificationScreen(),
  OfferScreen(),
  AccoundScreen(),
];

class _EventsBottomnavState extends State<EventsBottomnav> {
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
