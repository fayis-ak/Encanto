import 'package:encanto/auth/splash_screen/spalash_scren.dart';
import 'package:encanto/screens/mobile/drawer/screens/changepassword.dart';
 
import 'package:encanto/utils/colors.dart';
import 'package:encanto/utils/size.dart';
import 'package:encanto/widgets/app_bar.dart';
import 'package:encanto/widgets/global/text.dart';
import 'package:flutter/material.dart';

class SttingsDrawer extends StatelessWidget {
  const SttingsDrawer({super.key});

  Widget listtilewidget(
    BuildContext context,
    Icon icons,
    String text,
    VoidCallback? onTap,
  ) {
    return ListTile(
      leading: icons,
      title: Textwidget(
        text: text,
        fontsize: ResponsiveHelper.getWidth(context) * .050,
      ),
      onTap: onTap,
    );
  }

  void alertdialogwidget(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('Alert Delete'),
        content: const Text('Are you sure delete '),
        actions: [
          ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text('No')),
          ElevatedButton(
              onPressed: () async {
                Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(
                      builder: (context) => SplashScreen(),
                    ),
                    (route) => false);
              },
              child: const Text('Yes'))
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Appbarwidget(
          title: 'Settings', icons: Icons.favorite, icons2: Icons.message),
      body: Column(
        children: [
          Divider(
            color: ColorsClass.black,
          ),
          listtilewidget(
            context,
            Icon(Icons.wordpress_outlined),
            'Language',
            () {},
          ),
          Divider(
            color: ColorsClass.black,
          ),
          listtilewidget(
            context,
            Icon(Icons.dark_mode),
            'Dark mode',
            () {},
          ),
          Divider(
            color: ColorsClass.black,
          ),
          listtilewidget(
            context,
            Icon(Icons.lock),
            'Chnage password',
            () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ChangePasswordScreen(),
                  ));
            },
          ),
          Divider(
            color: ColorsClass.black,
          ),
          listtilewidget(
            context,
            Icon(Icons.person),
            'Delete account',
            () {
              alertdialogwidget(context);
            },
          ),
          Divider(
            color: ColorsClass.black,
          ),
        ],
      ),
    );
  }
}
