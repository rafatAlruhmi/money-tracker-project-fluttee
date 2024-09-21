import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:money_tracker/views/home_screen.dart';
import 'views/home_screen.dart';

class MyAppView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Money Tracker',
      theme: ThemeData(
        colorScheme: ColorScheme.light(
          surface: Colors.grey.shade100,
          onSurface: Colors.black,
          primary: Color(0xFF00B2E7),
          secondary: Color(0xFF32a852),
          tertiary: Color(0xFFFF8D6C),
            outline: Colors.grey.shade400,
        )
      ),
      home: const HomeScreen(),
    );
  }
}