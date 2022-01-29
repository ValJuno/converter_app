import 'package:flutter/material.dart';

class BorderButton extends StatelessWidget {
  const BorderButton({
    required this.onPressed,
    required this.child,
  });

  final void Function() onPressed;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      child: child,
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        onPrimary: Theme.of(context).accentColor,
        primary: isDark(context) ? Colors.transparent : Colors.white,
        shape: RoundedRectangleBorder(
          side: BorderSide(
            color: Theme.of(context).accentColor,
            width: 2,
          ),
          borderRadius: BorderRadius.circular(5),
        ),
      ),
    );
  }

  bool isDark(BuildContext context) {
    final Brightness brightnessValue =
        MediaQuery.of(context).platformBrightness;
    return brightnessValue == Brightness.dark;
  }
}
