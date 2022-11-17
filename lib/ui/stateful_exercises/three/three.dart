import 'package:flutter/material.dart';

import 'cliclable_square.dart';

class Three extends StatefulWidget {
  const Three({Key? key}) : super(key: key);

  @override
  State<Three> createState() => _ThreeState();
}

class _ThreeState extends State<Three> {
  Color _backgroundColor = Colors.orange;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: _backgroundColor,
      body: Center(
        child: ClickableSquare(
          onTap: _onTap,
        ),
      ),
    );
  }

  void _onTap() {
    setState(() {
      _backgroundColor = _backgroundColor == Colors.orange ? Colors.blue : Colors.orange;
    });
  }
}
