import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Layout Demo"),
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              // ROW LAYOUT
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(height: 50, width: 50, color: Colors.red),
                  Container(height: 50, width: 50, color: Colors.green),
                  Container(height: 50, width: 50, color: Colors.blue),
                ],
              ),

              SizedBox(height: 20),

              // COLUMN LAYOUT
              Column(
                children: [
                  Container(height: 40, width: double.infinity, color: Colors.orange),
                  SizedBox(height: 10),
                  Container(height: 40, width: double.infinity, color: Colors.purple),
                  SizedBox(height: 10),
                  Container(height: 40, width: double.infinity, color: Colors.teal),
                ],
              ),

              SizedBox(height: 20),

              // STACK LAYOUT
              Stack(
                alignment: Alignment.center,
                children: [
                  Container(height: 150, width: 150, color: Colors.yellow),
                  Container(height: 100, width: 100, color: Colors.black),
                  Container(height: 50, width: 50, color: Colors.white),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
