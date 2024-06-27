import 'package:flutter/material.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';
import 'pages/HomePage.dart';
import 'pages/StatPage.dart';
import 'pages/HistoriquePage.dart';


void main()  {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _currentIndex = 0;

  SetCurrentIndex(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            [
              "Acceuil",
              "Statistique",
              "Historique",
            ][_currentIndex],
          ),
          backgroundColor: Colors.greenAccent,
        ),
        body: [
          const HomePage(),
          const StatPage(),
          const HistoriquePage(),
        ][_currentIndex],

        bottomNavigationBar: SalomonBottomBar(
          currentIndex: _currentIndex,
          selectedItemColor: const Color(0xff6200ee),
          unselectedItemColor: const Color(0xff757575),
          backgroundColor: Colors.greenAccent,
          onTap: (i) => setState(() => _currentIndex = i),
          items: [
            /// Home
            SalomonBottomBarItem(
              icon: Icon(Icons.home),
              title: Text("Acceuil"),
              selectedColor: Colors.green,
            ),
            SalomonBottomBarItem(
              icon: Icon(Icons.area_chart),
              title: Text("Statistique"),
              selectedColor: Colors.green,
            ),
            SalomonBottomBarItem(
              icon: Icon(Icons.list_alt_outlined),
              title: Text("Historique"),
              selectedColor: Colors.green,
            ),
          ],
        ),
      ),
    );
  }
}
