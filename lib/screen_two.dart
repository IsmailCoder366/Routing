import 'package:flutter/material.dart';
import 'package:routing/home_screen.dart';
import 'package:routing/screen_three.dart';

class ScreenTwo extends StatefulWidget {
  final String title;
  final int num;
  const ScreenTwo({super.key,
    required this.title,
    required this.num

  });

  @override
  State<ScreenTwo> createState() => _ScreenTwoState();
}

class _ScreenTwoState extends State<ScreenTwo> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        centerTitle: true,
      ),
      
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          InkWell(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => ScreenThree()));
            },
            child: Container(
              height: 50,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.green,
                borderRadius: BorderRadius.circular(10)
              ),
              child: Center(
                child: Text('Screen ${widget.num.toString()}',style: TextStyle(color: Colors.white, fontSize: 20),),
              ),
            ).p16(),
          )
        ],
      ),
    );
  }
}
