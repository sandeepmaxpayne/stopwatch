import 'dart:async';

import 'package:flutter/material.dart';
import 'package:stopwatch/ui/ElapsedTimeText.dart';

import 'ElapsedTimeTextBasic.dart';

class Stopwatch extends StatefulWidget {
  const Stopwatch({Key? key}) : super(key: key);

  @override
  _StopwatchState createState() => _StopwatchState();
}

class _StopwatchState extends State<Stopwatch> {
  late DateTime _datetime;
  Duration _elapsed = Duration.zero;
  late final Timer _timer;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _datetime = DateTime.now();
    _timer = Timer.periodic(const Duration(milliseconds: 50), (_) {
      final now = DateTime.now();
      setState(() {
        _elapsed = now.difference(_datetime);
      });
    });
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _timer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ElapsedTimeText(
      elapsed: _elapsed,
    );
  }
}
