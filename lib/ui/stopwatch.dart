import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:stopwatch/ui/ElapsedTimeText.dart';
import 'package:stopwatch/ui/stopwatch_renderer.dart';

import 'ElapsedTimeTextBasic.dart';

class Stopwatch extends StatefulWidget {
  const Stopwatch({Key? key}) : super(key: key);

  @override
  _StopwatchState createState() => _StopwatchState();
}

class _StopwatchState extends State<Stopwatch>
    with SingleTickerProviderStateMixin {
  Duration _elapsed = Duration.zero;
  // late final Timer _timer;
  late Ticker _ticker;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _ticker = createTicker((elapsed) {
      setState(() {
        _elapsed = elapsed;
      });
    });
    _ticker.start();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    // _timer.cancel();
    _ticker.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return StopwatchRenderer(
      elapsed: _elapsed,
    );
  }
}
