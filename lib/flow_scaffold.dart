import 'package:flow_app/bottom_navbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

import 'home_page.dart';

class FlowBackground extends HookWidget {
  final Widget child;

  FlowBackground({
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    final animationController =
        useAnimationController(duration: Duration(seconds: 20));
    final radius = useAnimation(Tween<double>(begin: 0.7, end: 2.0).animate(
        CurvedAnimation(parent: animationController, curve: Curves.easeInOut)));
    final alignmentValue = useAnimation(Tween<double>(begin: 1.0, end: 0.0)
        .animate(CurvedAnimation(
            parent: animationController, curve: Curves.easeInOut)));
    final color = useAnimation(ColorTween(begin: myBlue, end: myRed).animate(
        CurvedAnimation(parent: animationController, curve: Curves.easeInOut)));
    // final topColor = useAnimation(ColorTween(begin: myYellow, end: myYellow2)
    //     .animate(animationController));
    // final bottomColor = useAnimation(
    //     ColorTween(begin: myBlue, end: myBlue2).animate(animationController));
    if (!animationController.isAnimating) {
      animationController.forward();
    }
    if (animationController.isCompleted) {
      animationController.reverse();
    }
    return Container(
      decoration: BoxDecoration(
        gradient: RadialGradient(
          center: Alignment(0, alignmentValue),
          radius: radius,
          colors: [myYellow, color!],
        ),
      ),
      child: child,
    );
  }
}

class FlowScaffold extends HookWidget {
  final Widget child;

  FlowScaffold({
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      extendBodyBehindAppBar: true,
      backgroundColor: Colors.white,
      appBar: GlassBar('Flow'),
      body: child,
      bottomNavigationBar: MyBottomnavbar(),
    );
  }
}
