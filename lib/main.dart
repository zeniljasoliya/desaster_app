import 'package:flutter/material.dart';

import 'view/auth_screen/card.dart';
import 'view/auth_screen/setting_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Flutter Demo',
      home: CardScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
