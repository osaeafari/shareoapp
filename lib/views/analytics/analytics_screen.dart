import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:shareoapp/widgets/charts/line_chart.dart';

class AnalyticsScreen extends StatelessWidget {
  const AnalyticsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // Example data for PieChart
    final data = [
      PieChartSectionData(
        value: 40,
        color: const Color.fromARGB(255, 4, 95, 170),
        title: 'Blue',
      ),
      PieChartSectionData(
        value: 30,
        color: const Color.fromARGB(255, 184, 19, 7),
        title: 'Red',
      ),
      PieChartSectionData(
        value: 30,
        color: const Color.fromARGB(255, 3, 155, 8),
        title: 'Green',
      ),
    ];

    return Padding(
      padding: const EdgeInsets.all(24.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          LineChartSample1(),
          const SizedBox(height: 70),
          SizedBox(
            height: 200,
            child: PieChart(
              PieChartData(
                sections: data,
                centerSpaceRadius: 70,
                sectionsSpace: 2,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
