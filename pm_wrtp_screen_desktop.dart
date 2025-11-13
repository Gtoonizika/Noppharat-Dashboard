import 'package:flutter/material.dart';

class PMWrtpScreenDesktop extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('PM WRTP Dashboard'),
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.blueAccent,
      ),
      body: LayoutBuilder(
        builder: (context, constraints) {
          return Center(
            child: SingleChildScrollView(
              padding: EdgeInsets.all(16.0),
              child: Column(
                children: [
                  _buildHeader(),
                  _buildMetricsCard(),
                  SizedBox(height: 20),
                  _buildResponsiveTable(constraints.maxWidth),
                ],
              ),
            ),
          );
        },
      ),
    );
  }

  Widget _buildHeader() {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16.0),
      child: Text(
        'Overview Metrics',
        style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
      ),
    );
  }

  Widget _buildMetricsCard() {
    return Card(
      elevation: 4,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            _buildMetric('Total Users', '1,500'),
            _buildMetric('Active Sessions', '300'),
            _buildMetric('Tasks Completed', '1,200'),
          ],
        ),
      ),
    );
  }

  Widget _buildMetric(String title, String value) {
    return Column(
      children: [
        Text(
          title,
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
        ),
        SizedBox(height: 4),
        Text(
          value,
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
      ],
    );
  }

  Widget _buildResponsiveTable(double width) {
    return DataTable(
      columns: [
        DataColumn(label: Text('User')),
        DataColumn(label: Text('Status')),
        DataColumn(label: Text('Last Active')),
      ],
      rows: List<DataRow>.generate(5, (index) {
        return DataRow(cells: [
          DataCell(Text('User $index')),
          DataCell(Text('Active')),
          DataCell(Text('2025-11-13')),
        ]);
      }),
    );
  }
}