import 'package:flutter/material.dart';

const piStart = 3.12 / 1.2;
const piEnd = 3.12 * 1.35;

class CircleBarWidget extends StatelessWidget {
  final double initValue;
  final Color backgroundColor;
  final String title;

  CircleBarWidget(this.initValue, this.backgroundColor, this.title);

  @override
  Widget build(BuildContext context) {
    final size = 80.0;
    return Padding(
      padding: const EdgeInsets.only(top: 32, left: 8.0, right: 8.0),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(100),
          color: backgroundColor,
        ),
        child: TweenAnimationBuilder(
          tween: Tween(begin: 0.0, end: initValue / 100),
          duration: const Duration(seconds: 1),
          builder: (context, value, child) {
            final int percentage = ((value as double) * 100).ceil();
            return Padding(
              padding: const EdgeInsets.only(
                  top: 24, right: 16, left: 16, bottom: 24),
              child: Column(
                children: [
                  Center(
                    child: Container(
                      width: size,
                      height: size,
                      child: Stack(
                        children: [
                          ShaderMask(
                            shaderCallback: (rect) {
                              return SweepGradient(
                                      startAngle: 0.0,
                                      endAngle: piEnd,
                                      stops: [value, value],
                                      center: Alignment.center,
                                      colors: [
                                        Colors.white,
                                        Colors.white.withAlpha(55)
                                      ],
                                      transform:
                                          const GradientRotation(piStart))
                                  .createShader(rect);
                            },
                            child: Container(
                              width: size,
                              height: size,
                              decoration: const BoxDecoration(
                                  shape: BoxShape.circle, color: Colors.white),
                            ),
                          ),
                          Center(
                            child: Container(
                              width: size * 0.9,
                              height: size * 0.9,
                              decoration: BoxDecoration(
                                  color: backgroundColor,
                                  shape: BoxShape.circle),
                              child: Align(
                                child: Container(
                                  width: size * 0.75,
                                  height: size * 0.75,
                                  decoration: const BoxDecoration(
                                      color: Colors.white,
                                      shape: BoxShape.circle),
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  Row(
                    children: [
                      Text(
                        percentage.round().toString(),
                        style: const TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 20),
                      ),
                      const Text(
                        '%',
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w300,
                            fontSize: 10),
                      )
                    ],
                  ),
                  Padding(
                      padding: const EdgeInsets.only(top: 8),
                      child: Text(
                        title,
                        style: const TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w300,
                            fontSize: 12),
                      ))
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
