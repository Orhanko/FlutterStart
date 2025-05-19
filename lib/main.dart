import 'package:flutter/material.dart';
import 'package:pocetak/linear_gradient.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        body: LinearGradientWithCenteredText([
          const Color.fromARGB(255, 105, 105, 105),
          Colors.white,
        ]),
      ),
    ),
  );
}
