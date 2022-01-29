import 'package:flutter/material.dart';

class PageBody extends StatelessWidget {
  const PageBody({required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: Container(
        padding: const EdgeInsets.all(10.0),
        constraints: const BoxConstraints.expand(),
        child: SingleChildScrollView(
          child: SafeArea(
            child: child,
          ),
        ),
      ),
    );
  }
}
