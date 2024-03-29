import 'package:al_2/ui/home_screen/home_screen.dart';
import 'package:al_2/ui/layouts/layouts.dart';
import 'package:al_2/ui/lists/lists.dart';
import 'package:al_2/ui/settings_screen/settings_screen.dart';
import 'package:al_2/ui/webservices/webservices_screen.dart';
import 'package:al_2/ui/webservices/webservices_with_builder_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        textTheme: const TextTheme(
          headline1: TextStyle(
            fontSize: 24,
            color: Colors.red,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      home: const WebservicesWithBuilderScreen(),
    );
  }
}

class Home extends StatefulWidget {
  Home({
    Key? key,
    required this.title,
  }) : super(key: key);

  final String title;
  final screens = [
    const HomeScreen(),
    const SettingsScreen(),
  ];

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _screenIndex = 0;

  String get title => widget.title;

  List<Widget> get screens => widget.screens;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.arrow_back),
        title: Text(
          title,
        ),
      ),
      body: screens[_screenIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _screenIndex,
        onTap: _onTap,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Settings',
          ),
        ],
      ),
    );
  }

  void _onTap(int index) {
    setState(() {
      _screenIndex = index;
    });
    print(_screenIndex);
  }
}
