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
              "Accentual",
              "Menu",
              "Commands",
              "Profile",
            ][_currentIndex],
          ),
          backgroundColor: Colors.white,
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
          onTap: (i) => setState(() => _currentIndex = i),
          items: [
            /// Home
            SalomonBottomBarItem(
              icon: Icon(Icons.home),
              title: Text("Home"),
              selectedColor: Colors.purple,
            ),
            SalomonBottomBarItem(
              icon: Icon(Icons.menu_book),
              title: Text("Menu"),
              selectedColor: Colors.purple,
            ),
            SalomonBottomBarItem(
              icon: Icon(Icons.shopping_cart),
              title: Text("Panier"),
              selectedColor: Colors.purple,
            ),
            SalomonBottomBarItem(
              icon: Icon(Icons.person),
              title: Text("Profile"),
              selectedColor: Colors.purple,
            ),
          ],
        ),
      ),
    );
  }
}
