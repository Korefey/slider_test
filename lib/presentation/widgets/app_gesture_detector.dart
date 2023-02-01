import 'package:flutter/material.dart';

class AppGestureDetector extends StatelessWidget {
  final Widget child;
  final VoidCallback? onTap;
  final HitTestBehavior behavior;
  final GestureTapDownCallback? onTapDown;
  final GestureTapUpCallback? onTapUp;
  final GestureTapCancelCallback? onTapCancel;
  final VoidCallback? onLongPress;

  const AppGestureDetector({
    required this.child,
    required this.onTap,
    this.behavior = HitTestBehavior.opaque,
    this.onLongPress,
    this.onTapDown,
    this.onTapUp,
    this.onTapCancel,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      behavior: behavior,
      onTap: onTap,
      onTapDown: onTapDown,
      onTapUp: onTapUp,
      onTapCancel: onTapCancel,
      onLongPress: onLongPress,
      child: child,
    );
  }
}
