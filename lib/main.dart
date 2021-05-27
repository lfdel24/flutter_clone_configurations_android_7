import 'package:flutter/material.dart';

import 'src/home_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  static final primarySwatch = const MaterialColor(
    0xff263238,
    const <int, Color>{
      50: const Color(0xff263238),
      100: const Color(0xff263238),
      200: const Color(0xff263238),
      300: const Color(0xff263238),
      400: const Color(0xff263238),
      500: const Color(0xff263238),
      600: const Color(0xff263238),
      700: const Color(0xff263238),
      800: const Color(0xff263238),
      900: const Color(0xff263238),
    },
  );
  static final gray = const MaterialColor(
    0xffFAFAFA,
    const <int, Color>{
      50: const Color(0xffFAFAFA),
      100: const Color(0xffFAFAFA),
      200: const Color(0xffFAFAFA),
      300: const Color(0xffFAFAFA),
      400: const Color(0xffFAFAFA),
      500: const Color(0xffFAFAFA),
      600: const Color(0xffFAFAFA),
      700: const Color(0xffFAFAFA),
      800: const Color(0xffFAFAFA),
      900: const Color(0xffFAFAFA),
    },
  );

  static final accentColor = const MaterialColor(
    0xff009688,
    const <int, Color>{
      50: const Color(0xff009688),
      100: const Color(0xff009688),
      200: const Color(0xff009688),
      300: const Color(0xff009688),
      400: const Color(0xff009688),
      500: const Color(0xff009688),
      600: const Color(0xff009688),
      700: const Color(0xff009688),
      800: const Color(0xff009688),
      900: const Color(0xff009688),
    },
  );

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter configurations clone android 7.0| lfdel24@gmail.com',
      theme: ThemeData(
        primarySwatch: primarySwatch,
        accentColor: accentColor,
      ),
      home: HomePage(),
    );
  }
}
