import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CardScreen extends StatefulWidget {
  const CardScreen({super.key});

  @override
  State<CardScreen> createState() => _CardScreenState();
}

class _CardScreenState extends State<CardScreen> {
  bool switchValue = true;
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 20),
            height: height * 0.5,
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.amber,
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(15),
                topRight: Radius.circular(15),
              ),
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  const Color(0xFF253746),
                  Colors.grey.shade400,
                ],
              ),
            ),
            child: Stack(
              children: [
                Container(
                  margin: const EdgeInsets.only(top: 4, left: 3, right: 3),
                  height: height * 0.6,
                  width: double.infinity,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(13),
                      topRight: Radius.circular(13),
                    ),
                  ),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                const Text(
                                  'Rescue Activate',
                                  style: TextStyle(
                                    color: Color(0xFF253746),
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                const SizedBox(
                                  width: 5,
                                ),
                                CupertinoSwitch(
                                  value: switchValue,
                                  activeColor: const Color(0xFF253746),
                                  thumbColor: Colors.white,
                                  onChanged: (bool? value) {
                                    setState(() {
                                      switchValue = value ?? false;
                                    });
                                  },
                                ),
                              ],
                            ),
                            Container(
                              height: 40,
                              width: 3,
                              decoration: const BoxDecoration(
                                  color: Color(0xFF253746),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(2))),
                            ),
                            Row(
                              children: [
                                const Text(
                                  'Merge Rescue',
                                  style: TextStyle(
                                    color: Color(0xFF253746),
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                const SizedBox(
                                  width: 5,
                                ),
                                Container(
                                  padding: const EdgeInsets.all(2),
                                  alignment: Alignment.center,
                                  height: 80,
                                  width: 50,
                                  child: Image.asset(
                                    'assets/icons/icon1.png',
                                    color: const Color(0xFF253746),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 20),
                        child: Row(
                          children: [
                            Icon(
                              Icons.camera_alt_outlined,
                              color: Color(0xFF253746),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              'Images & Video',
                              style: TextStyle(
                                color: Color(0xFF253746),
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.symmetric(horizontal: 15),
                        height: 3,
                        width: double.infinity,
                        decoration: const BoxDecoration(
                            color: Color(0xFF253746),
                            borderRadius: BorderRadius.all(Radius.circular(2))),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 20,
                          vertical: 15,
                        ),
                        child: SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                height: 150,
                                width: 150,
                                decoration: BoxDecoration(
                                  color: Colors.grey.shade200,
                                  boxShadow: const [
                                    BoxShadow(
                                        color: Colors.grey,
                                        blurRadius: 5,
                                        spreadRadius: 1,
                                        offset: Offset(4, 4)),
                                  ],
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                child: Container(
                                  margin: const EdgeInsets.all(3),
                                  height: 150,
                                  width: 150,
                                  decoration: BoxDecoration(
                                    color: Colors.black,
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                ),
                              ),
                              const SizedBox(
                                width: 20,
                              ),
                              Container(
                                height: 150,
                                width: 150,
                                decoration: BoxDecoration(
                                  color: Colors.grey.shade200,
                                  boxShadow: const [
                                    BoxShadow(
                                        color: Colors.grey,
                                        blurRadius: 5,
                                        spreadRadius: 1,
                                        offset: Offset(4, 4)),
                                  ],
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                child: Container(
                                  margin: const EdgeInsets.all(3),
                                  height: 150,
                                  width: 150,
                                  decoration: BoxDecoration(
                                    color: Colors.black,
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                ),
                              ),
                              const SizedBox(
                                width: 20,
                              ),
                              Container(
                                height: 150,
                                width: 150,
                                decoration: BoxDecoration(
                                  color: Colors.grey.shade200,
                                  boxShadow: const [
                                    BoxShadow(
                                        color: Colors.grey,
                                        blurRadius: 5,
                                        spreadRadius: 1,
                                        offset: Offset(4, 4)),
                                  ],
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                child: Container(
                                  margin: const EdgeInsets.all(3),
                                  height: 150,
                                  width: 150,
                                  decoration: BoxDecoration(
                                    color: Colors.black,
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 17.5),
                        child: Row(
                          children: [
                            Icon(
                              Icons.list_sharp,
                              color: Color(0xFF253746),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              'Details',
                              style: TextStyle(
                                color: Color(0xFF253746),
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.symmetric(horizontal: 15),
                        height: 3,
                        width: double.infinity,
                        decoration: const BoxDecoration(
                            color: Color(0xFF253746),
                            borderRadius: BorderRadius.all(Radius.circular(2))),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 25),
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(bottom: 13),
                              child: Icon(
                                Icons.circle,
                                color: Colors.black.withOpacity(0.5),
                                size: 5,
                              ),
                            ),
                            const SizedBox(
                              width: 4,
                            ),
                            SizedBox(
                              width: width * 0.78,
                              child: Text(
                                '6V4Q+R29, Unnamed Road, Vrundavan Society, Yoginagar Society, Surat, Gujarat 395010',
                                style: TextStyle(
                                  color: Colors.black.withOpacity(0.4),
                                  overflow: TextOverflow.fade,
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
