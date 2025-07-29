import 'package:flutter/material.dart';
import 'package:routing/home_screen.dart';
import 'package:routing/screen_three.dart';

class ScreenTwo extends StatefulWidget {
  static const String routeName = '/screenTwo';




  const ScreenTwo({super.key,


  });

  @override
  State<ScreenTwo> createState() => _ScreenTwoState();
}

class _ScreenTwoState extends State<ScreenTwo> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text('Screen Two'),
        centerTitle: true,
      ),
      
      body: GestureDetector(
        onTap: () {
          Navigator.pushNamed(context, '/screenThree');
        },
        child: Hero(
          tag: 'imageHero',

          child: Center(
            child: Image(
              height: 200,
                width: 200,
                image: NetworkImage('https://plus.unsplash.com/premium_photo-1753080951637-ffbdee3c44c9?q=80&w=1412&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D')),
          ),
        ),
      )
    );
  }
}
