import 'package:al_2/ui/navigation/page_not_found.dart';
import 'package:al_2/ui/navigation/screen_b.dart';
import 'package:al_2/ui/navigation/screen_c.dart';
import 'package:flutter/material.dart';

import 'navigation_home.dart';

void main() {
  runApp(const NavigationApp());
}

class NavigationApp extends StatelessWidget {
  const NavigationApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        '/': (BuildContext context) => const NavigationHome(),
        ScreenB.routeName: (BuildContext context) => const ScreenB(),
      },
      onGenerateRoute: (RouteSettings settings) {
        Widget screen = const PageNotFound();

        switch (settings.name) {
          case ScreenC.routeName:
            final argument = settings.arguments;
            if (argument != null && argument is int) {
              screen = ScreenC(id: argument);
            }
            break;
        }

        return MaterialPageRoute(builder: (context) => screen);
      },
    );
  }
}
