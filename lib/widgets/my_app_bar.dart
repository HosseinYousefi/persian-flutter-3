import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:pf/main.dart';

class MyAppBar extends AppBar {
  MyAppBar({
    final Widget? leading,
  }) : super(
          leading: leading,
          actions: [BrightnessButton()],
        );
}

class BrightnessButton extends HookConsumerWidget {
  const BrightnessButton();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final brightness = ref.watch(brightnessProvider);
    return IconButton(
      icon: Icon(
        brightness.state == Brightness.light
            ? Icons.dark_mode
            : Icons.light_mode,
      ),
      onPressed: () {
        brightness.state = brightness.state == Brightness.light
            ? Brightness.dark
            : Brightness.light;
      },
    );
  }
}
