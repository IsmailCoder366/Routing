import 'package:flutter/material.dart';
import 'package:routing/screen_two.dart';

class HomeScreen extends StatefulWidget {
static const String routeName = '/';
  


  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}
extension PaddingExtension on Widget {
  Padding p16() => Padding(key: key, padding: const EdgeInsets.all(16),child : this);

  Padding px(double value, {Key? key}) => Padding ( key: key, padding:
            EdgeInsets.symmetric(horizontal: value),
            child: this,
            );
  Padding py(double value, {Key? key}) => Padding ( key: key, padding:
      EdgeInsets.symmetric(vertical: value),
        child: this,
      );
}


class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Screen One'),
        centerTitle: true,

      ),
      body: GestureDetector(
        onTap: () {
          Navigator.pushNamed(context, '/screenTwo');
        },
        child: Hero(
          tag: 'imageHero',

          child: Image(
            height: 200,
              width: 200,
              image: NetworkImage('https://plus.unsplash.com/premium_photo-1753080951637-ffbdee3c44c9?q=80&w=1412&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D')),
        ),
      )
    );
  }
}


