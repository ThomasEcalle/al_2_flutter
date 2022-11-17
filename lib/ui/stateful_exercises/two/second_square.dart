import 'package:flutter/material.dart';

class SecondSquare extends StatelessWidget {
  final Color color;
  final double height;
  final double width;

  const SecondSquare({
    Key? key,
    this.height = 200,
    this.width = 200,
    this.color = Colors.red,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 600),
      height: height,
      width: width,
      color: color,
    );
  }
}
