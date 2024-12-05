import 'package:flutter/material.dart';

class SettingPage extends StatefulWidget {
  const SettingPage({super.key});

  @override
  State<SettingPage> createState() => _SettingPageState();
}

class _SettingPageState extends State<SettingPage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 430,
          height: 765,
          clipBehavior: Clip.antiAlias,
          decoration: const BoxDecoration(color: Colors.white),
          child: Stack(
            children: [
              Positioned(
                left: 113,
                top: 423,
                child: FloatingActionButton.extended(
                  onPressed: () {
                    showModalBottomSheet(
                      context: context,
                      builder: (context) => Container(),
                    );
                  },
                  label: const Text('Edit'),
                  backgroundColor: const Color(0xFF253746),
                ),
              ),
              Positioned(
                left: 113,
                top: 477,
                child: SizedBox(
                  width: 204,
                  height: 38,
                  child: Stack(
                    children: [
                      Positioned(
                        left: 0,
                        top: 0,
                        child: Container(
                          width: 204,
                          height: 38,
                          decoration: ShapeDecoration(
                            color: const Color(0xFF253746),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                            ),
                            shadows: const [
                              BoxShadow(
                                color: Color(0x3F000000),
                                blurRadius: 4,
                                offset: Offset(0, 4),
                                spreadRadius: 0,
                              )
                            ],
                          ),
                        ),
                      ),
                      const Positioned(
                        left: 14,
                        top: 0,
                        child: SizedBox(
                          width: 176,
                          height: 38,
                          child: Text(
                            'Add Department',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontFamily: 'Gilroy',
                              fontWeight: FontWeight.w700,
                              height: 0,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                left: 0,
                top: 250,
                child: SizedBox(
                  width: 430,
                  height: 153,
                  child: Stack(
                    children: [
                      Positioned(
                        left: 0,
                        top: 0,
                        child: Container(
                          width: 430,
                          height: 153,
                          decoration: const BoxDecoration(
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                color: Color(0x26000000),
                                blurRadius: 8,
                                offset: Offset(0, 4),
                                spreadRadius: 0,
                              )
                            ],
                          ),
                        ),
                      ),
                      const Positioned(
                        left: 25,
                        top: 0,
                        child: SizedBox(
                          width: 180,
                          height: 153,
                          child: Text(
                            'Address',
                            style: TextStyle(
                              color: Color(0xFF253746),
                              fontSize: 20,
                              fontFamily: 'Gilroy',
                              fontWeight: FontWeight.w700,
                              height: 0,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 211,
                        top: 9,
                        child: Container(
                          width: 194,
                          height: 135,
                          clipBehavior: Clip.antiAlias,
                          decoration: ShapeDecoration(
                            color: Colors.white,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            shadows: const [
                              BoxShadow(
                                color: Color(0x3F000000),
                                blurRadius: 4,
                                offset: Offset(0, 4),
                                spreadRadius: 0,
                              )
                            ],
                          ),
                          child: Stack(
                            children: [
                              Positioned(
                                left: -160,
                                top: -68,
                                child: Container(
                                  width: 574,
                                  height: 332,
                                  decoration: const BoxDecoration(
                                    image: DecorationImage(
                                      image: NetworkImage(
                                          "https://via.placeholder.com/574x332"),
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 171,
                                top: 37,
                                child: Container(
                                  width: 13,
                                  height: 18,
                                  clipBehavior: Clip.antiAlias,
                                  decoration: const BoxDecoration(),
                                  child: const Stack(children: []),
                                ),
                              ),
                              Positioned(
                                left: 24,
                                top: 58,
                                child: Container(
                                  width: 14,
                                  height: 18,
                                  clipBehavior: Clip.antiAlias,
                                  decoration: const BoxDecoration(),
                                  child: const Stack(children: []),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                left: 0,
                top: 200,
                child: SizedBox(
                  width: 430,
                  height: 50,
                  child: Stack(
                    children: [
                      Positioned(
                        left: 0,
                        top: 0,
                        child: Container(
                          width: 430,
                          height: 50,
                          decoration: const BoxDecoration(
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                color: Color(0x26000000),
                                blurRadius: 8,
                                offset: Offset(0, 4),
                                spreadRadius: 0,
                              )
                            ],
                          ),
                        ),
                      ),
                      const Positioned(
                        left: 25,
                        top: 0,
                        child: SizedBox(
                          width: 180,
                          height: 50,
                          child: Text(
                            'Designation',
                            style: TextStyle(
                              color: Color(0xFF253746),
                              fontSize: 20,
                              fontFamily: 'Gilroy',
                              fontWeight: FontWeight.w700,
                              height: 0,
                            ),
                          ),
                        ),
                      ),
                      const Positioned(
                        left: 215,
                        top: 0,
                        child: SizedBox(
                          width: 190,
                          height: 50,
                          child: Text(
                            'FIRST RESPONDER FIRE ENGINE',
                            textAlign: TextAlign.right,
                            style: TextStyle(
                              color: Color(0xFF253746),
                              fontSize: 12,
                              fontFamily: 'Gilroy',
                              fontWeight: FontWeight.w400,
                              height: 0,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                left: 0,
                top: 150,
                child: SizedBox(
                  width: 430,
                  height: 50,
                  child: Stack(
                    children: [
                      Positioned(
                        left: 0,
                        top: 0,
                        child: Container(
                          width: 430,
                          height: 50,
                          decoration: const BoxDecoration(
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                color: Color(0x26000000),
                                blurRadius: 8,
                                offset: Offset(0, 4),
                                spreadRadius: 0,
                              )
                            ],
                          ),
                        ),
                      ),
                      const Positioned(
                        left: 25,
                        top: 0,
                        child: SizedBox(
                          width: 180,
                          height: 50,
                          child: Text(
                            'Number',
                            style: TextStyle(
                              color: Color(0xFF253746),
                              fontSize: 20,
                              fontFamily: 'Gilroy',
                              fontWeight: FontWeight.w700,
                              height: 0,
                            ),
                          ),
                        ),
                      ),
                      const Positioned(
                        left: 215,
                        top: 0,
                        child: SizedBox(
                          width: 190,
                          height: 50,
                          child: Text(
                            '+91 111-222-3333',
                            textAlign: TextAlign.right,
                            style: TextStyle(
                              color: Color(0xFF253746),
                              fontSize: 12,
                              fontFamily: 'Gilroy',
                              fontWeight: FontWeight.w400,
                              height: 0,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                left: 0,
                top: 100,
                child: SizedBox(
                  width: 430,
                  height: 50,
                  child: Stack(
                    children: [
                      Positioned(
                        left: 0,
                        top: 0,
                        child: Container(
                          width: 430,
                          height: 50,
                          decoration: const BoxDecoration(
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                color: Color(0x26000000),
                                blurRadius: 8,
                                offset: Offset(0, 4),
                                spreadRadius: 0,
                              )
                            ],
                          ),
                        ),
                      ),
                      const Positioned(
                        left: 25,
                        top: 0,
                        child: SizedBox(
                          width: 180,
                          height: 50,
                          child: Text(
                            'MPIN',
                            style: TextStyle(
                              color: Color(0xFF253746),
                              fontSize: 20,
                              fontFamily: 'Gilroy',
                              fontWeight: FontWeight.w700,
                              height: 0,
                            ),
                          ),
                        ),
                      ),
                      const Positioned(
                        left: 215,
                        top: 0,
                        child: SizedBox(
                          width: 190,
                          height: 50,
                          child: Text(
                            '● ● ● ●',
                            textAlign: TextAlign.right,
                            style: TextStyle(
                              color: Color(0xFF253746),
                              fontSize: 12,
                              fontFamily: 'Gilroy',
                              fontWeight: FontWeight.w400,
                              height: 0,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 316,
                        top: 15,
                        child: Container(
                          width: 20.25,
                          height: 18,
                          clipBehavior: Clip.antiAlias,
                          decoration: const BoxDecoration(),
                          child: const Stack(children: []),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                left: 0,
                top: 50,
                child: SizedBox(
                  width: 430,
                  height: 50,
                  child: Stack(
                    children: [
                      Positioned(
                        left: 0,
                        top: 0,
                        child: Container(
                          width: 430,
                          height: 50,
                          decoration: const BoxDecoration(
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                color: Color(0x26000000),
                                blurRadius: 8,
                                offset: Offset(0, 4),
                                spreadRadius: 0,
                              )
                            ],
                          ),
                        ),
                      ),
                      const Positioned(
                        left: 25,
                        top: 0,
                        child: SizedBox(
                          width: 180,
                          height: 50,
                          child: Text(
                            'Name',
                            style: TextStyle(
                              color: Color(0xFF253746),
                              fontSize: 20,
                              fontFamily: 'Gilroy',
                              fontWeight: FontWeight.w700,
                              height: 0,
                            ),
                          ),
                        ),
                      ),
                      const Positioned(
                        left: 215,
                        top: 0,
                        child: SizedBox(
                          width: 190,
                          height: 50,
                          child: Text(
                            'B.K. Solanki',
                            textAlign: TextAlign.right,
                            style: TextStyle(
                              color: Color(0xFF253746),
                              fontSize: 12,
                              fontFamily: 'Gilroy',
                              fontWeight: FontWeight.w400,
                              height: 0,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                left: 0,
                top: 0,
                child: SizedBox(
                  width: 430,
                  height: 50,
                  child: Stack(
                    children: [
                      Positioned(
                        left: 0,
                        top: 0,
                        child: Container(
                          width: 430,
                          height: 50,
                          decoration: const BoxDecoration(color: Colors.white),
                        ),
                      ),
                      const Positioned(
                        left: 138,
                        top: 11,
                        child: Text(
                          'USER DETAILS',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Color(0xFF253746),
                            fontSize: 24,
                            fontFamily: 'Gilroy',
                            fontWeight: FontWeight.w700,
                            // textDecoration: TextDecoration.underline,
                            height: 0,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class FigmaToCodeApp extends StatelessWidget {
  const FigmaToCodeApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: const Color.fromARGB(255, 18, 32, 47),
      ),
      home: Scaffold(
        body: ListView(children: const [
          Body(),
        ]),
      ),
    );
  }
}

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          width: 430,
          height: 765,
          clipBehavior: Clip.antiAlias,
          decoration: const BoxDecoration(color: Colors.white),
          child: Stack(
            children: [
              Positioned(
                left: 113,
                top: 423,
                child: SizedBox(
                  width: 204,
                  height: 39,
                  child: Stack(
                    children: [
                      Container(
                        width: 204,
                        height: 38,
                        decoration: ShapeDecoration(
                          color: const Color(0xFF253746),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          shadows: const [
                            BoxShadow(
                              color: Color(0x3F000000),
                              blurRadius: 4,
                              offset: Offset(0, 4),
                              spreadRadius: 0,
                            )
                          ],
                        ),
                      ),
                      const Positioned(
                        left: 69,
                        top: 1,
                        child: SizedBox(
                          width: 66,
                          height: 38,
                          child: Center(
                            child: Text(
                              'Edit',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontFamily: 'Gilroy',
                                fontWeight: FontWeight.w700,
                                height: 0,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                left: 113,
                top: 477,
                child: SizedBox(
                  width: 204,
                  height: 38,
                  child: Stack(
                    children: [
                      Positioned(
                        left: 0,
                        top: 0,
                        child: Container(
                          width: 204,
                          height: 38,
                          decoration: ShapeDecoration(
                            color: const Color(0xFF253746),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                            ),
                            shadows: const [
                              BoxShadow(
                                color: Color(0x3F000000),
                                blurRadius: 4,
                                offset: Offset(0, 4),
                                spreadRadius: 0,
                              )
                            ],
                          ),
                        ),
                      ),
                      const Positioned(
                        left: 14,
                        top: 0,
                        child: SizedBox(
                          width: 176,
                          height: 38,
                          child: Center(
                            child: Text(
                              'Add Department',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontFamily: 'Gilroy',
                                fontWeight: FontWeight.w700,
                                height: 0,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                left: 0,
                top: 250,
                child: SizedBox(
                  width: 430,
                  height: 153,
                  child: Stack(
                    children: [
                      Positioned(
                        left: 0,
                        top: 0,
                        child: Container(
                          width: 430,
                          height: 153,
                          decoration: const BoxDecoration(
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                color: Color(0x26000000),
                                blurRadius: 8,
                                offset: Offset(0, 4),
                                spreadRadius: 0,
                              )
                            ],
                          ),
                        ),
                      ),
                      const Positioned(
                        left: 25,
                        top: 0,
                        child: SizedBox(
                          width: 180,
                          height: 153,
                          child: Text(
                            'Address',
                            style: TextStyle(
                              color: Color(0xFF253746),
                              fontSize: 20,
                              fontFamily: 'Gilroy',
                              fontWeight: FontWeight.w700,
                              height: 0,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 211,
                        top: 9,
                        child: Container(
                          width: 194,
                          height: 135,
                          clipBehavior: Clip.antiAlias,
                          decoration: ShapeDecoration(
                            color: Colors.white,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            shadows: const [
                              BoxShadow(
                                color: Color(0x3F000000),
                                blurRadius: 4,
                                offset: Offset(0, 4),
                                spreadRadius: 0,
                              )
                            ],
                          ),
                          child: Stack(
                            children: [
                              Positioned(
                                left: -160,
                                top: -68,
                                child: Container(
                                  width: 574,
                                  height: 332,
                                  decoration: const BoxDecoration(
                                    image: DecorationImage(
                                      image: NetworkImage(
                                          "https://via.placeholder.com/574x332"),
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 171,
                                top: 37,
                                child: Container(
                                  width: 13,
                                  height: 18,
                                  clipBehavior: Clip.antiAlias,
                                  decoration: const BoxDecoration(),
                                  child: const Stack(children: []),
                                ),
                              ),
                              Positioned(
                                left: 24,
                                top: 58,
                                child: Container(
                                  width: 14,
                                  height: 18,
                                  clipBehavior: Clip.antiAlias,
                                  decoration: const BoxDecoration(),
                                  child: const Stack(children: []),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                left: 0,
                top: 200,
                child: SizedBox(
                  width: 430,
                  height: 50,
                  child: Stack(
                    children: [
                      Positioned(
                        left: 0,
                        top: 0,
                        child: Container(
                          width: 430,
                          height: 50,
                          decoration: const BoxDecoration(
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                color: Color(0x26000000),
                                blurRadius: 8,
                                offset: Offset(0, 4),
                                spreadRadius: 0,
                              )
                            ],
                          ),
                        ),
                      ),
                      const Positioned(
                        left: 25,
                        top: 0,
                        child: SizedBox(
                          width: 180,
                          height: 50,
                          child: Text(
                            'Designation',
                            style: TextStyle(
                              color: Color(0xFF253746),
                              fontSize: 20,
                              fontFamily: 'Gilroy',
                              fontWeight: FontWeight.w700,
                              height: 0,
                            ),
                          ),
                        ),
                      ),
                      const Positioned(
                        left: 215,
                        top: 0,
                        child: SizedBox(
                          width: 190,
                          height: 50,
                          child: Text(
                            'FIRST RESPONDER FIRE ENGINE',
                            textAlign: TextAlign.right,
                            style: TextStyle(
                              color: Color(0xFF253746),
                              fontSize: 12,
                              fontFamily: 'Gilroy',
                              fontWeight: FontWeight.w400,
                              height: 0,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                left: 0,
                top: 150,
                child: SizedBox(
                  width: 430,
                  height: 50,
                  child: Stack(
                    children: [
                      Positioned(
                        left: 0,
                        top: 0,
                        child: Container(
                          width: 430,
                          height: 50,
                          decoration: const BoxDecoration(
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                color: Color(0x26000000),
                                blurRadius: 8,
                                offset: Offset(0, 4),
                                spreadRadius: 0,
                              )
                            ],
                          ),
                        ),
                      ),
                      const Positioned(
                        left: 25,
                        top: 0,
                        child: SizedBox(
                          width: 180,
                          height: 50,
                          child: Text(
                            'Number',
                            style: TextStyle(
                              color: Color(0xFF253746),
                              fontSize: 20,
                              fontFamily: 'Gilroy',
                              fontWeight: FontWeight.w700,
                              height: 0,
                            ),
                          ),
                        ),
                      ),
                      const Positioned(
                        left: 215,
                        top: 0,
                        child: SizedBox(
                          width: 190,
                          height: 50,
                          child: Text(
                            '+91 111-222-3333',
                            textAlign: TextAlign.right,
                            style: TextStyle(
                              color: Color(0xFF253746),
                              fontSize: 12,
                              fontFamily: 'Gilroy',
                              fontWeight: FontWeight.w400,
                              height: 0,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                left: 0,
                top: 100,
                child: SizedBox(
                  width: 430,
                  height: 50,
                  child: Stack(
                    children: [
                      Positioned(
                        left: 0,
                        top: 0,
                        child: Container(
                          width: 430,
                          height: 50,
                          decoration: const BoxDecoration(
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                color: Color(0x26000000),
                                blurRadius: 8,
                                offset: Offset(0, 4),
                                spreadRadius: 0,
                              )
                            ],
                          ),
                        ),
                      ),
                      const Positioned(
                        left: 25,
                        top: 0,
                        child: SizedBox(
                          width: 180,
                          height: 50,
                          child: Text(
                            'MPIN',
                            style: TextStyle(
                              color: Color(0xFF253746),
                              fontSize: 20,
                              fontFamily: 'Gilroy',
                              fontWeight: FontWeight.w700,
                              height: 0,
                            ),
                          ),
                        ),
                      ),
                      const Positioned(
                        left: 215,
                        top: 0,
                        child: SizedBox(
                          width: 190,
                          height: 50,
                          child: Text(
                            '● ● ● ●',
                            textAlign: TextAlign.right,
                            style: TextStyle(
                              color: Color(0xFF253746),
                              fontSize: 12,
                              fontFamily: 'Gilroy',
                              fontWeight: FontWeight.w400,
                              height: 0,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 316,
                        top: 15,
                        child: Container(
                          width: 20.25,
                          height: 18,
                          clipBehavior: Clip.antiAlias,
                          decoration: const BoxDecoration(),
                          child: const Stack(children: []),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                left: 0,
                top: 50,
                child: SizedBox(
                  width: 430,
                  height: 50,
                  child: Stack(
                    children: [
                      Positioned(
                        left: 0,
                        top: 0,
                        child: Container(
                          width: 430,
                          height: 50,
                          decoration: const BoxDecoration(
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                color: Color(0x26000000),
                                blurRadius: 8,
                                offset: Offset(0, 4),
                                spreadRadius: 0,
                              )
                            ],
                          ),
                        ),
                      ),
                      const Positioned(
                        left: 25,
                        top: 0,
                        child: SizedBox(
                          width: 180,
                          height: 50,
                          child: Text(
                            'Name',
                            style: TextStyle(
                              color: Color(0xFF253746),
                              fontSize: 20,
                              fontFamily: 'Gilroy',
                              fontWeight: FontWeight.w700,
                              height: 0,
                            ),
                          ),
                        ),
                      ),
                      const Positioned(
                        left: 215,
                        top: 0,
                        child: SizedBox(
                          width: 190,
                          height: 50,
                          child: Text(
                            'B.K. Solanki',
                            textAlign: TextAlign.right,
                            style: TextStyle(
                              color: Color(0xFF253746),
                              fontSize: 12,
                              fontFamily: 'Gilroy',
                              fontWeight: FontWeight.w400,
                              height: 0,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                left: 0,
                top: 0,
                child: SizedBox(
                  width: 430,
                  height: 50,
                  child: Stack(
                    children: [
                      Positioned(
                        left: 0,
                        top: 0,
                        child: Container(
                          width: 430,
                          height: 50,
                          decoration: const BoxDecoration(color: Colors.white),
                        ),
                      ),
                      const Positioned(
                        left: 138,
                        top: 11,
                        child: Text(
                          'USER DETAILS',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Color(0xFF253746),
                            fontSize: 24,
                            fontFamily: 'Gilroy',
                            fontWeight: FontWeight.w700,
                            // textDecoration: TextDecoration.underline,
                            height: 0,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
