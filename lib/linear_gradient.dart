import 'package:flutter/material.dart';
import 'package:pocetak/styled_text.dart';

class LinearGradientWithCenteredText extends StatelessWidget {
  const LinearGradientWithCenteredText({super.key});
  @override
  Widget build(context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [Colors.limeAccent, Colors.black],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: Center(child: StyledText()),
    );
  }
}
