import 'package:flutter/material.dart';
import 'package:routing/screen_two.dart';

class HomeScreen extends StatefulWidget {
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
        title: Text('Routing'),

      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          InkWell(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => ScreenTwo()));
            },
            child: Container(
              height: 50,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.green,
                borderRadius: BorderRadius.circular(8),
              ),
              child: const Center(
                child: Text(
                  'Home Screen',
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
              ),
            ).p16(),
          )
        ],
      ),
    );
  }
}


