import 'dart:developer';

import 'package:encanto/utils/colors.dart';
import 'package:encanto/utils/image.dart';
import 'package:encanto/utils/size.dart';
import 'package:encanto/widgets/global/text.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        width: ResponsiveHelper.getWidth(context) * .600,
        backgroundColor: ColorsClass.drawerbg,
        child: Container(
          child: ListView(
            children: [
              Column(
                children: [
                  Container(
                    height: ResponsiveHelper.getHeight(context) * .200,
                    width: ResponsiveHelper.getWidth(context) * .250,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('assets/images/Ellipse 6.png')),
                        borderRadius: BorderRadius.circular(
                          ResponsiveHelper.getWidth(context) * .050,
                        )),
                  ),
                  Text('Anjal'),
                ],
              ),
              ListTile(
                leading: Icon(Icons.abc),
                title: Text('Vender'),
              ),
              Divider(
                color: ColorsClass.black,
              ),
              ListTile(
                leading: Icon(Icons.settings),
                title: Text('Settings'),
              ),
              Divider(
                color: ColorsClass.black,
              ),
              ListTile(
                leading: Icon(Icons.favorite),
                title: Text('Favorite'),
              ),
              Divider(
                color: ColorsClass.black,
              ),
              ListTile(
                leading: Icon(Icons.menu_book_sharp),
                title: Text('About us'),
              ),
              Divider(
                color: ColorsClass.black,
              ),
              ListTile(
                leading: Icon(Icons.abc),
                title: Text('Complaints'),
              ),
              Divider(
                color: ColorsClass.black,
              ),
              ListTile(
                leading: Icon(Icons.abc),
                title: Text('Review'),
              ),
              Divider(
                color: ColorsClass.black,
              ),
              ListTile(
                onTap: () {
                  log('logout event');
                },
                leading: Icon(Icons.add),
                title: Textwidget(
                  text: 'Logout',
                  fontsize: ResponsiveHelper.getWidth(context) * .050,
                ),
              ),
              Divider(
                color: ColorsClass.black,
              ),
              SizedBox(
                height: ResponsiveHelper.getHeight(context) * .050,
              ),
            ],
          ),
        ),
      ),
      appBar: AppBar(
        title: Row(
          children: [
            Icon(
              Icons.home,
            ),
            SizedBox(
              width: 10,
            ),
            Text('Home')
          ],
        ),
        actions: [
          Row(
            children: [
              Icon(Icons.favorite),
              SizedBox(
                width: 20,
              ),
              Icon(Icons.message),
              SizedBox(
                width: 20,
              ),
            ],
          ),
        ],
      ),
      body: Column(
        children: [
          Divider(
            thickness: 1,
            color: ColorsClass.black,
          ),
          Container(
            width: double.infinity,
            height: ResponsiveHelper.getHeight(context) * .300,
            color: ColorsClass.bordingscreen,
            child: Column(
              children: [
                Image.asset(
                  Images.boardImagePath,
                  width: ResponsiveHelper.getWidth(context) / 1,
                  height: ResponsiveHelper.getHeight(context) / 4,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
