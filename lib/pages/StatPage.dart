import 'package:flutter/material.dart';

class StatPage extends StatefulWidget {
  const StatPage({super.key});

  @override
  State<StatPage> createState() => _StatPageState();
}

class _StatPageState extends State<StatPage> {
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text("Hello Stats :) !! "),
    );
  }
}
