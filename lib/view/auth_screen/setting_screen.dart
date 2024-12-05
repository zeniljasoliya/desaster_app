import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:desaster_app/utils/colors.dart';
import 'package:flutter/material.dart';

class SettingScreenDemo extends StatefulWidget {
  const SettingScreenDemo({super.key});

  @override
  State<SettingScreenDemo> createState() => _SettingScreenDemoState();
}

class _SettingScreenDemoState extends State<SettingScreenDemo> {
  bool _isPasswordVisible = false;
  TextEditingController txtPinController = TextEditingController();
  TextEditingController txtNameController = TextEditingController();
  TextEditingController txtMNumberController = TextEditingController();
  TextEditingController txtDesignationController = TextEditingController();
  List<IconData> iconList = [
    Icons.saved_search_sharp,
    Icons.explore_outlined,
  ];
  int _bottomNavIndex = 0;

  @override
  Widget build(BuildContext context) {
    // final height = MediaQuery.of(context).size.height;
    // final width = MediaQuery.of(context).size.width;
    // final textTheme = Theme.of(context).textTheme;
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: secondaryColor,
          centerTitle: true,
          title: Text(
            'Settings',
            style: TextStyle(
              color: white,
              fontSize: 20,
              fontWeight: FontWeight.w300,
            ),
          ),
          leading: IconButton(
            icon: Icon(
              Icons.arrow_back,
              color: white,
            ),
            onPressed: () {},
            color: white,
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 15),
              child: IconButton(
                icon: Icon(
                  Icons.language,
                  color: white,
                ),
                onPressed: () {},
                color: white,
              ),
            )
          ],
        ),
        body: Column(
          // crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 10),
              child: Center(
                child: Text(
                  'USER DETAILS',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0xFF253746),
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    // decoration: TextDecoration.underline,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            Container(
              height: 50,
              width: double.maxFinite,
              padding: const EdgeInsets.symmetric(horizontal: 20),
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.shade400,
                    offset: const Offset(0, 4),
                    blurRadius: 4,
                  ),
                ],
              ),
              child: Row(
                children: [
                  const Text(
                    'Name',
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF253746)),
                  ),
                  const SizedBox(width: 87),
                  Expanded(
                    child: TextFormField(
                      controller: txtNameController,
                      decoration: const InputDecoration(
                          hintText: 'Enter your name',
                          border: InputBorder.none),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            Container(
              height: 50,
              width: double.maxFinite,
              padding: const EdgeInsets.symmetric(horizontal: 20),
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.shade400,
                    offset: const Offset(0, 4),
                    blurRadius: 4,
                  ),
                ],
              ),
              child: Row(
                children: [
                  const Text(
                    'MPIN',
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF253746)),
                  ),
                  const SizedBox(width: 90),
                  Expanded(
                    child: TextFormField(
                      obscureText: !_isPasswordVisible,
                      controller: txtPinController,
                      decoration: InputDecoration(
                          hintText: 'Enter your PIN',
                          border: InputBorder.none,
                          suffixIcon: IconButton(
                            onPressed: () {
                              setState(() {
                                _isPasswordVisible = !_isPasswordVisible;
                              });
                            },
                            icon: Icon(
                              _isPasswordVisible
                                  ? Icons.visibility
                                  : Icons.visibility_off,
                            ),
                          )),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            Container(
              height: 50,
              width: double.maxFinite,
              padding: const EdgeInsets.symmetric(horizontal: 20),
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.shade400,
                    offset: const Offset(0, 4),
                    blurRadius: 4,
                  ),
                ],
              ),
              child: Row(
                children: [
                  const Text(
                    'Number',
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF253746)),
                  ),
                  const SizedBox(width: 70),
                  Expanded(
                    child: TextFormField(
                      controller: txtMNumberController,
                      decoration: const InputDecoration(
                          hintText: 'Enter your number',
                          border: InputBorder.none),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            Container(
              height: 50,
              width: double.maxFinite,
              padding: const EdgeInsets.symmetric(horizontal: 20),
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.shade400,
                    offset: const Offset(0, 4),
                    blurRadius: 4,
                  ),
                ],
              ),
              child: Row(
                children: [
                  const Text(
                    'Designation',
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF253746)),
                  ),
                  const SizedBox(width: 40),
                  Expanded(
                    child: TextFormField(
                      controller: txtDesignationController,
                      decoration: const InputDecoration(
                          hintText: 'Enter your designation',
                          border: InputBorder.none),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            Container(
              height: 150,
              width: double.maxFinite,
              padding: const EdgeInsets.symmetric(horizontal: 20),
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.shade400,
                    offset: const Offset(0, 4),
                    blurRadius: 4,
                  ),
                ],
              ),
              child: Row(
                children: [
                  const Text(
                    'Address',
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF253746)),
                  ),
                  const SizedBox(width: 70),
                  Expanded(
                      child: Container(
                    height: 130,
                    width: 150,
                    decoration: BoxDecoration(
                        color: Colors.grey,
                        borderRadius: BorderRadius.circular(10)),
                  )),
                ],
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 130),
              child: FloatingActionButton.extended(
                onPressed: () {
                  showModalBottomSheet(
                    context: context,
                    builder: (context) => Container(),
                  );
                },
                label: const Text('         Edit         '),
                backgroundColor: secondaryColor,
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 130),
              child: FloatingActionButton.extended(
                onPressed: () {
                  showModalBottomSheet(
                    context: context,
                    builder: (context) => Container(),
                  );
                },
                label: const Text('Add Department'),
                backgroundColor: secondaryColor,
              ),
            ),
          ],
        ),
        floatingActionButton: FloatingActionButton(
            backgroundColor: secondaryColor,
            child: Container(
              padding: const EdgeInsets.all(2),
              alignment: Alignment.center,
              height: 50,
              child: Image.asset('assets/icons/main button.png'),
            ),
            onPressed: () {}),
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
      ),
    );
  }
}
