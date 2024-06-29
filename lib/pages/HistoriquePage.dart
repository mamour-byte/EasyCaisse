import 'package:flutter/material.dart';


class HistoriquePage extends StatefulWidget {
  const HistoriquePage({super.key});

  @override
  State<HistoriquePage> createState() => _HistoriquePageState();
}

class _HistoriquePageState extends State<HistoriquePage> {
  @override
  Widget build(BuildContext context) {
    return const Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Column(
              children: [
                Text("Nom Produit")
              ],
            ),

            Column(
              children: [
                Text("N Commmande")
              ],
            ),

            Column(
              children: [
                Text("DateTime")
              ],
            ),

            Column(
              children: [
                Text("Prix ")
              ],
            )
          ],
    );
  }
}
