import 'dart:async';

import 'package:encanto/auth/widgets/splash_loggin.dart';
import 'package:encanto/utils/colors.dart';
import 'package:encanto/utils/image.dart';
import 'package:encanto/utils/size.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BordingScreen extends StatefulWidget {
  const BordingScreen({super.key});

  @override
  State<BordingScreen> createState() => _BordingScreenState();
}

class _BordingScreenState extends State<BordingScreen> {
  final PageController _pageController = PageController(initialPage: 0);

  int _activePage = 0;

  final List<Widget> _pages = [
    Pageone(),
    PageTwo(),
    PageThree(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView.builder(
            controller: _pageController,
            onPageChanged: (int page) {
              setState(() {
                _activePage = page;
              });
            },
            itemCount: _pages.length,
            itemBuilder: (context, index) {
              return _pages[index % _pages.length];
            },
          ),
          Positioned(
            bottom: ResponsiveHelper.getHeight(context) * .200,
            right: ResponsiveHelper.getHeight(context) / 5,
            // left: ResponsiveHelper.getHeight(context) * .020,

            child: Container(
              child: Row(
                children: List<Widget>.generate(
                    _pages.length,
                    (index) => Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: CircleAvatar(
                            radius: ResponsiveHelper.getWidth(context) * .020,
                            backgroundColor: _activePage == index
                                ? Colors.pink
                                : ColorsClass.whiteColor,
                          ),
                        )),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class Pageone extends StatelessWidget {
  const Pageone({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: ResponsiveHelper.getWidth(context) / 1,
      height: ResponsiveHelper.getHeight(context) * 0.965,
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage(
              'assets/images/dotedscreen1.png',
            ),
            fit: BoxFit.cover),
      ),
      child: Stack(children: [
        Positioned(
          bottom: ResponsiveHelper.getHeight(context) * .150,
          right: ResponsiveHelper.getHeight(context) * .020,
          child: const Text(
            'Join us at Encanto and let your curiosity thrive',
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
        )
      ]),
    );
  }
}

class PageTwo extends StatelessWidget {
  const PageTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: ResponsiveHelper.getWidth(context) / 1,
      height: ResponsiveHelper.getHeight(context) * 0.965,
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage(
              'assets/images/dotedscreen1.png',
            ),
            fit: BoxFit.cover),
      ),
      child: Stack(children: [
        Positioned(
          bottom: ResponsiveHelper.getHeight(context) * .150,
          right: ResponsiveHelper.getHeight(context) * .020,
          child: const Text(
            '''Let's sprinkle some enchantment on your event''',
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
        )
      ]),
    );
  }
}

class PageThree extends StatefulWidget {
  const PageThree({super.key});

  @override
  State<PageThree> createState() => _PageThreeState();
}

class _PageThreeState extends State<PageThree> {
  @override
  void initState() {
    Timer(Duration(seconds: 2), () {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(
          builder: (context) => LogginSplash(),
        ),
      );
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: ResponsiveHelper.getWidth(context) / 1,
      height: ResponsiveHelper.getHeight(context) * 0.965,
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage(
              Images.dotedbgimage,
            ),
            fit: BoxFit.cover),
      ),
      child: Stack(children: [
        Positioned(
          bottom: ResponsiveHelper.getHeight(context) * .150,
          right: ResponsiveHelper.getHeight(context) * .080,
          child: Text(
            'THE COMPLETE EVENT SOLUTION',
            style: TextStyle(
                color: ColorsClass.whiteColor, fontWeight: FontWeight.bold),
          ),
        )
      ]),
    );
  }
}
