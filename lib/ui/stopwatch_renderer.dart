import 'package:flutter/material.dart';
import 'package:stopwatch/ui/ElapsedTimeText.dart';

class StopwatchRenderer extends StatelessWidget {
  const StopwatchRenderer({Key? key, required this.elapsed}) : super(key: key);
  final Duration elapsed;

  @override
  Widget build(BuildContext context) {
    return ElapsedTimeText(
      elapsed: elapsed,
    );
  }
}
