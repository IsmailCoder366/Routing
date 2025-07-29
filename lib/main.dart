import 'package:flutter/material.dart';
import 'package:routing/home_screen.dart';
import 'package:routing/screen_three.dart';
import 'package:routing/screen_two.dart';

void main() => runApp(const HeroApp());

class HeroApp extends StatelessWidget {
  const HeroApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(title: 'Transition Demo',
    initialRoute: '/',
      routes: {
        '/': (context) =>  HomeScreen(),
        '/screenTwo': (context) => ScreenTwo(),
        '/screenThree': (context) => ScreenThree(),
      },

    );
  }
}
