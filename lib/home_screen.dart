import 'package:flutter/material.dart';

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
        children: [
          Container(
            height: 50,
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.green,
            )
          ).p16()
        ],
      ),
    );
  }
}


