import 'package:flutter/material.dart';

class Square extends StatefulWidget {
  const Square({Key? key}) : super(key: key);

  @override
  State<Square> createState() => _SquareState();
}

class _SquareState extends State<Square> {
  Color _color = Colors.orange;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: _onTap,
      child: Container(
        height: 200,
        width: 200,
        decoration: BoxDecoration(
          color: _color,
          borderRadius: BorderRadius.circular(20),
        ),
      ),
    );
  }

  void _onTap() {
    setState(() {
      _color = _color == Colors.orange ? Colors.blue : Colors.orange;
    });
  }
}
