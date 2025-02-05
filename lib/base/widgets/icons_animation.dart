import 'package:flutter/material.dart';
import 'package:ticket_booking_app/base/res/styles/app_styles.dart';

class IconAnimation extends StatefulWidget {
  final double start;
  final double end;
  final Duration duration;
  final Color iconColor;

  const IconAnimation({
    super.key,
    this.start = -50,
    this.end = 250,
    this.duration = const Duration(seconds: 5),
    this.iconColor = Colors.white,
  });

  @override
  _IconAnimationState createState() => _IconAnimationState();
}

class _IconAnimationState extends State<IconAnimation> with SingleTickerProviderStateMixin {
  late final AnimationController _controller = AnimationController(
    duration: widget.duration,
    vsync: this,
  )..repeat(); // Ensures animation starts immediately and runs efficiently

  late final Animation<double> _animation = Tween<double>(
    begin: widget.start,
    end: widget.end,
  ).animate(_controller);

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _animation,
      builder: (context, child) {
        return Positioned(
          left: _animation.value, // Moves icon left to right
          child: Transform.rotate(
            angle: 1.5708, // 90° rotation for airplane direction
            child: Icon(Icons.local_airport_rounded, color: AppStyles.iconColor2),
          ),
        );
      },
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}
