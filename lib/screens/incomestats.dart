import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';

class IncomeStatsScreen extends StatelessWidget {
  const IncomeStatsScreen({super.key});

  @override
  Widget build(BuildContext context) {    
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 20),
              Text(
                "Estatísticas de renda",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 10),
              _buildChart(),
              SizedBox(height: 10),
              Center(
                child: Column(
                  children: [
                    Text("Saldo total"),
                    Text("AOA 126.544.238",
                      style: TextStyle(
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                        color: Colors.purple,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20),
              Text(
                "Transação",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              _buildTransaction("Netflix", "Subscrição mensal", "\$120",
                  "assets/netflix.png"),
              _buildTransaction("ENDE", "Taxa de energia", "AOA 9.744", "assets/ende.png"),
              _buildTransaction("Amazon", "Compras", "\$2500", "assets/amazon.png"),
              _buildTransaction("EPAL", "Taxa de água", "AOA 19.412", "assets/epal.png"),
              Spacer(),
              _buildBottomNavigation(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildChart() {
  return SizedBox(
    height: 150,
    child: LineChart(
      LineChartData(
        gridData: FlGridData(show: false),
        titlesData: FlTitlesData(show: false),
        borderData: FlBorderData(show: false),
        lineBarsData: [
          LineChartBarData(
            spots: [
              FlSpot(0, 1),
              FlSpot(1, 2),
              FlSpot(2, 1.5),
              FlSpot(3, 2.8),
              FlSpot(4, 2.5),
            ],
            isCurved: true,
            barWidth: 4,
            isStrokeCapRound: true,
            belowBarData: BarAreaData(
              show: true,
              gradient: LinearGradient(
                // ignore: deprecated_member_use
                colors: [Colors.purple.withOpacity(0.3), Colors.transparent],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
            ),
            gradient: LinearGradient(
              colors: [Colors.purple, Colors.deepPurple],
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
            ),
          ),
        ],
      ),
    ),
  );
}


  Widget _buildTransaction(String title, String subtitle, String amount, String iconPath) {
    return ListTile(
      leading: CircleAvatar(
        backgroundColor: Colors.grey.shade200,
        child: Icon(Icons.attach_money, color: Colors.black),
      ),
      title: Text(title, style: TextStyle(fontWeight: FontWeight.bold)),
      subtitle: Text(subtitle),
      trailing: Text(amount, style: TextStyle(fontWeight: FontWeight.bold)),
    );
  }

  Widget _buildBottomNavigation() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      decoration: BoxDecoration(
        color: Colors.purple,
        borderRadius: BorderRadius.circular(30),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Icon(Icons.home, color: Colors.white),
          Icon(Icons.pause_circle_filled, color: Colors.white),
          Icon(Icons.notifications, color: Colors.white),
          Icon(Icons.settings, color: Colors.white),
        ],
      ),
    );
  }
}
