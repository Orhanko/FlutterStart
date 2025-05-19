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
  var number = 0;
  void randomiseClicked() {
    setState(() {
      number = Random().nextInt(10);
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
          onPressed: randomiseClicked,
          child: Text('Randomise number', style: TextStyle(fontSize: 28)),
        ),
      ],
    );
  }
}
