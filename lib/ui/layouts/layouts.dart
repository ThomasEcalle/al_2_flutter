import 'package:al_2/ui/layouts/red_circle.dart';
import 'package:flutter/material.dart';

class Layout extends StatelessWidget {
  const Layout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            color: Colors.red,
            height: height * .5,
            child: LayoutBuilder(
              builder: (context, constraints) {
                final maxHeight = constraints.maxHeight;
                return Stack(
                  children: [
                    Column(
                      children: [
                        Container(
                          height: maxHeight * .5,
                          color: Colors.yellow,
                        ),
                        Container(
                          height: maxHeight * .5,
                          width: double.maxFinite,
                          color: Colors.green,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Wrap(
                              spacing: 10,
                              runSpacing: 10,
                              children: List.generate(20, (index) {
                                return const RedCircle();
                              }),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Positioned.fill(
                      child: Center(
                        child: Container(
                          height: 100,
                          width: 100,
                          color: Colors.blue.withOpacity(.4),
                        ),
                      ),
                    ),
                  ],
                );
              },
            ),
          ),
          Container(
            color: Colors.blue,
            height: height * .5,
            child: Row(
              children: [
                Expanded(
                  flex: 2,
                  child: Container(
                    color: Colors.orangeAccent,
                    height: double.maxFinite,
                    width: double.maxFinite,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        RedCircle(),
                        RedCircle(),
                        Spacer(),
                        RedCircle(),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    color: Colors.red,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
