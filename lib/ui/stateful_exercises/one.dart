import 'package:al_2/ui/stateful_exercises/square.dart';
import 'package:flutter/material.dart';

class One extends StatelessWidget {
  const One({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Square(),
      ),
    );
  }
}
