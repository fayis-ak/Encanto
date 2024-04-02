import 'package:encanto/screens/mobile/bottomnavigation/accound_scree.dart';
import 'package:encanto/screens/mobile/bottomnavigation/notification_screen.dart';
import 'package:encanto/screens/mobile/bottomnavigation/offer_screen.dart';
import 'package:encanto/screens/mobile/bottomnavigation/search_screen.dart';
import 'package:encanto/screens/mobile/event_screens/screens/planninganddecor.dart';
 
import 'package:encanto/widgets/bottomdestination.dart';
import 'package:flutter/material.dart';

class PlanningBottomNav extends StatefulWidget {
  const PlanningBottomNav({super.key});

  @override
  State<PlanningBottomNav> createState() => _PlanningBottomNavState();
}

final List<Widget> _pages = [
  PlanningAndDecor(),
  SearchScreen(),
  NotificationScreen(),
  OfferScreen(),
  AccoundScreen(),
];

class _PlanningBottomNavState extends State<PlanningBottomNav> {
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
