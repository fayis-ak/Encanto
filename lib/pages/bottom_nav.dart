import 'package:encanto/auth/screens/notification_screen.dart';
import 'package:encanto/pages/bottomnavigation/accound_scree.dart';
import 'package:encanto/pages/bottomnavigation/offer_screen.dart';
import 'package:encanto/pages/bottomnavigation/search_screen.dart';
import 'package:encanto/pages/homa_page.dart';
import 'package:encanto/utils/colors.dart';
import 'package:flutter/material.dart';

class BottomNav extends StatefulWidget {
  BottomNav({Key? key}) : super(key: key);

  @override
  _BottomNavState createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  int index = 0;

  final List<Widget> _pages = [
    HomePage(),
    SearchScreen(),
    NotificationScreen(),
    OfferScreen(),
    AccoundScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: NavigationBarTheme(
        data: NavigationBarThemeData(
          indicatorColor: ColorsClass.bordingscreen,
        ),
        child: NavigationBar(
          selectedIndex: index,
          onDestinationSelected: (index) => setState(() => this.index = index),
          destinations: [
            NavigationDestination(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            NavigationDestination(
              icon: Icon(Icons.search),
              label: 'Search',
            ),
            NavigationDestination(
                icon: Icon(Icons.notification_important_outlined),
                label: 'Notification'),
            NavigationDestination(
              icon: Icon(Icons.wallet_giftcard_sharp),
              label: 'Offer',
            ),
            NavigationDestination(
              icon: Icon(Icons.person),
              label: 'Account',
            ),
          ],
        ),
      ),
      body: _pages[index],
    );
  }
}
