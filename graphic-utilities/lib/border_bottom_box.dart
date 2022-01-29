import 'package:flutter/material.dart';

class BorderBottomBox extends StatelessWidget {
  BorderBottomBox({required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10.0),
      decoration: BoxDecoration(
          border: Border(
        bottom: BorderSide(
          color: Theme.of(context).accentColor,
          width: 1.0,
        ),
      )),
      child: child,
    );
  }
}
