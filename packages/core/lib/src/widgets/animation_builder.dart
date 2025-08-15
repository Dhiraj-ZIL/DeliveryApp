import 'package:flutter/material.dart';

class AnimatedOpacityWidget extends StatelessWidget {
  final AnimationController animationController;
  final Animation<double> fadeAnimation;
  final Widget child;

  const AnimatedOpacityWidget({
    super.key,
    required this.animationController,
    required this.fadeAnimation,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: animationController,
      builder: (context, _) {
        return Opacity(
          opacity: fadeAnimation.value,
          child: child,
        );
      },
    );
  }
}
