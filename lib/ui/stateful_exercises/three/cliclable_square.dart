import 'package:flutter/material.dart';

class ClickableSquare extends StatelessWidget {
  final VoidCallback onTap;

  const ClickableSquare({
    Key? key,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 100,
        width: 100,
        decoration: BoxDecoration(
          color: Colors.yellow,
          borderRadius: BorderRadius.circular(20),
        ),
      ),
    );
  }
}
