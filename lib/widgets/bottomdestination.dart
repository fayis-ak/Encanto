// Widget bottomNavigationBarScreenWidget({
//   required int currentIndex,
//   required void Function(int)? onTap,
// }) {
//   return ConvexAppBar(
//     items: [
//       TabItem(
//         icon: Image.asset('assets/icon_location.png', scale: 2.5),
//         activeIcon: Image.asset('assets/icon_location.png', scale: 2.5, color: Color(0xff2B7AF5)),
//       ),
//       TabItem(
//         icon: Image.asset('assets/icon_home.png', scale: 2.5),
//         activeIcon: Image.asset('assets/icon_home.png', scale: 2.5, color: Color(0xff2B7AF5)),
//       ),
//       TabItem(
//         icon: Image.asset('assets/icon_person.png', scale: 2.5),
//         activeIcon: Image.asset('assets/icon_person.png', scale: 2.5, color: Color(0xff2B7AF5)),
//       ),
//       TabItem(
//         icon: Image.asset('assets/icon_chat.png', scale: 2.5),
//         activeIcon: Image.asset('assets/icon_chat.png', scale: 2.5, color: Color(0xff2B7AF5)),
//       ),
//     ],
//     initialActiveIndex: currentIndex,
//     backgroundColor: Colors.white,
//     color: Color(0xff00AFB9),
//     elevation: 0.0,
//     onTap: onTap,
//   );
// }

import 'package:encanto/utils/colors.dart';
import 'package:flutter/material.dart';

Widget _buildBottomnavigation({
  required int currentIndex,
  required void Function(int)? onTap,
}) {
  return NavigationBar(
    selectedIndex: 0,
    onDestinationSelected: onTap,
    height: 60,
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
        label: 'Notification',
      ),
      NavigationDestination(
        icon: Icon(
          Icons.wallet_giftcard_sharp,
        ),
        label: 'Offer',
      ),
      NavigationDestination(
        icon: Icon(
          Icons.person,
        ),
        label: 'Account',
      ),
    ],
  );
}

//////////////////////////
///

class BottomNavigationBarScreen extends StatelessWidget {
  final int currentIndex;
  final void Function(int)? onTap;
  const BottomNavigationBarScreen({
    super.key,
    this.onTap,
    required this.currentIndex,
  });

  @override
  Widget build(BuildContext context) {
    return NavigationBar(
      height: 60,
      selectedIndex: currentIndex,
      onDestinationSelected: onTap,
      indicatorColor: ColorsClass.bordingscreen,
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
          label: 'Notification',
        ),
        NavigationDestination(
          icon: Icon(
            Icons.wallet_giftcard_sharp,
          ),
          label: 'Offer',
        ),
        NavigationDestination(
          icon: Icon(
            Icons.person,
          ),
          label: 'Account',
        ),
      ],
    );
  }
}
