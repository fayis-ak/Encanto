// import 'package:encanto/screens/mobile/bottomnavigation/accound_scree.dart';
// import 'package:encanto/screens/mobile/bottomnavigation/notification_screen.dart';
// import 'package:encanto/screens/mobile/bottomnavigation/offer_screen.dart';
// import 'package:encanto/screens/mobile/bottomnavigation/search_screen.dart';
// import 'package:encanto/screens/mobile/drawer/vender_screen.dart';
// import 'package:encanto/screens/mobile/event_screens/wedding.dart';
// import 'package:encanto/widgets/bottomdestination.dart';
// import 'package:flutter/material.dart';

// class WeddingBottomnav extends StatefulWidget {
//   const WeddingBottomnav({super.key});

//   @override
//   State<WeddingBottomnav> createState() => _WeddingBottomnavState();
// }

// final List<Widget> _pages = [
//   WeddingSreen(),
//   SearchScreen(),
//   NotificationScreen(),
//   OfferScreen(),
//   AccoundScreen(),
// ];

// class _WeddingBottomnavState extends State<WeddingBottomnav> {
//   int index = 0;
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: _pages[index],
//       bottomNavigationBar: BottomNavigationBarScreen(
//         currentIndex: index,
//         onTap: (index) => setState(() => this.index = index),
//       ),
//     );
//   }
// }
