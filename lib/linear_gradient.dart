import 'package:flutter/material.dart';
import 'package:pocetak/styled_text.dart';

class LinearGradientWithCenteredText extends StatelessWidget {
  const LinearGradientWithCenteredText(this.colors, {super.key});
  final List<Color> colors;

  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: colors,
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: Center(child: StyledText('Haiii Bluttereee🤗')),
    );
  }
}
