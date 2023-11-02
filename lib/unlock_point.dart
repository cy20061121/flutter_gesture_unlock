import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_gesture_unlock/gesture_unlock_view.dart';

class UnlockPoint {
  final double x;
  final double y;
  final bool isSelect = false;
  UnlockStatus status = UnlockStatus.normal;
  final int position;

  UnlockPoint({required this.x, required this.y, required this.position});

  Offset toOffset() {
    return Offset(x, y);
  }

  bool contains(Offset offset, radius) {
    return sqrt(pow(offset.dx - x, 2) + pow(offset.dy - y, 2)) < radius;
  }

  @override
  String toString() {
    return "($x,$y)";
  }
}
