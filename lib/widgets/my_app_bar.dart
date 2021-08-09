import 'package:flutter/material.dart';

class MyAppBar extends AppBar {
  MyAppBar({
    final Widget? leading,
  }) : super(
          leading: leading,
          actions: [BrightnessButton()],
        );
}

class BrightnessButton extends StatelessWidget {
  const BrightnessButton();

  @override
  Widget build(BuildContext context) {
    final brightness = Brightness.dark;
    return IconButton(
      icon: Icon(
        brightness == Brightness.dark ? Icons.dark_mode : Icons.light_mode,
      ),
      onPressed: () {},
    );
  }
}
