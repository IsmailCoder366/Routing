import 'package:flutter/material.dart';
import 'package:routing/home_screen.dart';

class ScreenThree extends StatefulWidget {


static const String routeName = '/screenThree';

  const ScreenThree({super.key});

  @override
  State<ScreenThree> createState() => _ScreenThreeState();
}

class _ScreenThreeState extends State<ScreenThree> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text('Screen Three'),
        centerTitle: true,
      ),

      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            height: 50,
            width: double.infinity,
            decoration: BoxDecoration(
                color: Colors.green,
                borderRadius: BorderRadius.circular(10)
            ),
            child: Center(
              child: Text('Screen Three'),
            ),
          ).p16(),
        ],
      ),
    );
  }
}
