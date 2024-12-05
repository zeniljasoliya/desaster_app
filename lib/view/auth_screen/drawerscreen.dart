import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:desaster_app/utils/colors.dart';
import 'package:flutter/material.dart';

class DrawerDemo extends StatefulWidget {
  const DrawerDemo({super.key});

  @override
  State<DrawerDemo> createState() => _DrawerDemoState();
}

class _DrawerDemoState extends State<DrawerDemo> {
  List<IconData> iconList = [
    Icons.saved_search_sharp,
    Icons.explore_outlined,
  ];
  int _bottomNavIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const Column(children: []),
      floatingActionButton: FloatingActionButton(
        backgroundColor: secondaryColor,
        onPressed: shoMenu,
        child: Container(
          padding: const EdgeInsets.all(2),
          alignment: Alignment.center,
          height: 50,
          child: Image.asset('assets/icons/main button.png'),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: AnimatedBottomNavigationBar(
        // navigation bar
        icons: iconList,
        activeIndex: _bottomNavIndex,
        gapLocation: GapLocation.center,
        notchMargin: 8, // Default notch margin is 8
        notchSmoothness: NotchSmoothness.verySmoothEdge,
        onTap: (index) => setState(() => _bottomNavIndex = index),
        backgroundColor: secondaryColor,
      ),
    );
  }

  shoMenu() {
    showBottomSheet(
      context: context,
      builder: (context) {
        return Column(
          children: [
            Container(
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(16.0),
                  topRight: Radius.circular(16.0),
                ),
                color: Color(0xFF253746),
              ),
              child: Stack(
                children: [
                  Container(
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(16.0),
                        topRight: Radius.circular(16.0),
                      ),
                      color: Colors.white,
                    ),
                  )
                ],
              ),
            ),
          ],
        );
      },
    );
  }
}
