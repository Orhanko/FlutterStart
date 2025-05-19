import 'dart:math';
import 'package:flutter/material.dart';

class RandomiseWidget extends StatefulWidget {
  const RandomiseWidget({super.key});
  @override
  State<RandomiseWidget> createState() {
    return _RandomiseWidgetState();
  }
}

class _RandomiseWidgetState extends State<RandomiseWidget> {
  final randomiser = Random();
  var number = 0;
  void randomiseClicked() {
    setState(() {
      number = randomiser.nextInt(10) + 1;
    });
  }

  @override
  Widget build(context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          number.toString(),
          style: TextStyle(fontSize: 28, color: Colors.white),
        ),
        SizedBox(height: 30),
        ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.blueAccent,
            foregroundColor: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          ),
          onPressed: randomiseClicked,
          child: const Padding(
            padding: EdgeInsets.all(10),
            child: Text('Randomise number', style: TextStyle(fontSize: 20)),
          ),
        ),
      ],
    );
  }
}
