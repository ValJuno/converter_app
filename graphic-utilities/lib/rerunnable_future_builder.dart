import 'package:flutter/material.dart';

import 'circular_loading.dart';

class ReRunnableFutureBuilder extends StatelessWidget {
  final Future<dynamic> _future;
  final dynamic Function() onRerun;
  final Widget Function(Error)? onError;

  const ReRunnableFutureBuilder(this._future,
      {required this.onRerun, this.onError});

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: _future,
      builder: (context, snapshot) {
        if (snapshot.connectionState != ConnectionState.done) {
          return CircularLoading();
        }
        if (snapshot.hasError) {
          return onError!(snapshot.error as Error);
        }
        return onRerun();
      },
    );
  }
}
