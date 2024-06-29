import 'package:flutter/material.dart';
import 'package:flutter_charts/flutter_charts.dart' as charts;

class StatPage extends StatefulWidget {
  const StatPage({super.key});

  @override
  State<StatPage> createState() => _StatPageState();
}

class _StatPageState extends State<StatPage> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          //   _buildPieChart(),
          SizedBox(height: 20),
          _buildCardWithIcon(
              icon: Icons.attach_money,
              text: '38 750 F cfa',
              iconColor: Colors.green),
          SizedBox(height: 20),
          _buildCardWithText('Nombre de Ventes', '45'),
          SizedBox(height: 20),
          _buildCardWithIconAndText(
              icon: Icons.bar_chart,
              text: 'Spaghetti',
              iconColor: Colors.black),
        ],
      ),
    );
  }


  Widget _buildCardWithIcon(
      {required IconData icon, required String text, required Color iconColor}) {
    return Card(
      child: ListTile(
        leading: Icon(Icons.money, color: Colors.greenAccent, size: 40),
        title: Text(
          text,
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }

  Widget _buildCardWithText(String title, String value) {
    return Card(
      child: Column(
        children: [
          Text(
            title,
            style: TextStyle(fontSize: 18),
          ),
          SizedBox(height: 8),
          Text(
            value,
            style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }

  Widget _buildCardWithIconAndText(
      {required IconData icon, required String text, required Color iconColor}) {
    return Card(
      child: ListTile(
        leading: Icon(icon, color: iconColor, size: 40),
        title: Text(
          text,
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}

  class PieChartData {
  final String label;
  final int value;
  final Color color;

  PieChartData(this.label, this.value, this.color);
  }



