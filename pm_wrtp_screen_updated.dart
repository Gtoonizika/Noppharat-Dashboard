import 'package:flutter/material.dart';

class PMWrtpScreenUpdated extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('PM WRTP Screen'),
      ),
      body: LayoutBuilder(
        builder: (context, constraints) {
          return GridView.count(
            crossAxisCount: constraints.maxWidth > 1200 ? 3 : (constraints.maxWidth > 800 ? 2 : 1),
            children: List.generate(10, (index) {
              return Card(
                margin: EdgeInsets.all(16),
                child: Padding(
                  padding: EdgeInsets.all(20),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[  
                      Text(
                        'Card $index',
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 10),
                      Text(
                        'Description about card $index',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                    ],
                  ),
                ),
              );
            }),
          );
        },
      ),
    );
  }
}