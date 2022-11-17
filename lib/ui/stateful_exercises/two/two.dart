import 'package:al_2/ui/stateful_exercises/two/second_square.dart';
import 'package:flutter/material.dart';

class Two extends StatefulWidget {
  const Two({Key? key}) : super(key: key);

  @override
  State<Two> createState() => _TwoState();
}

class _TwoState extends State<Two> {
  Color _color = Colors.blue;
  double _height = 200;
  double _width = 200;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SecondSquare(
          height: _height,
          width: _width,
          color: _color,
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.edit),
        onPressed: _onTap,
      ),
    );
  }

  void _onTap() {
    setState(() {
      _color = _color == Colors.blue ? Colors.orange : Colors.blue;
      _height = _height == 200 ? 100 : 200;
      _width = _width == 200 ? 100 : 200;
    });
  }
}
