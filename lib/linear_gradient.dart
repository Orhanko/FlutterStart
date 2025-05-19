import 'package:flutter/material.dart';
import 'package:pocetak/styled_text.dart';
import 'package:pocetak/random_number_button.dart';

class LinearGradientWithCenteredText extends StatelessWidget {
  const LinearGradientWithCenteredText(this.colors, {super.key});
  final List<Color> colors;
  void randomiseClicked() {}

  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: colors,
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
      ),
      child: Center(
        child: RandomiseWidget(),

        // child: Column(
        //   mainAxisSize: MainAxisSize.min,
        //   children: [
        //     StyledText('Haiii Bluttereee🤗'),
        //     SizedBox(height: 30),
        //     ElevatedButton(
        //       onPressed: randomiseClicked,
        //       child: Text('Randomise number', style: TextStyle(fontSize: 28)),
        //     ),
        //   ],
        // ),
      ),
    );
  }
}
