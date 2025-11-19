import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      // Initial route (first screen)
      initialRoute: '/',

      // Named routes
      routes: {
        '/': (context) => HomeScreen(),
        '/second': (context) => SecondScreen(),
      },
    );
  }
}

// ----------------------- HOME SCREEN -----------------------
class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Experiment 4 - Home Screen"),
      ),

      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pushNamed(context, '/second');
          },
          child: Text("Go to Second Screen"),
        ),
      ),
    );
  }
}

// ----------------------- SECOND SCREEN -----------------------
class SecondScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Second Screen"),
      ),

      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pop(context);  // Go back to Home Screen
          },
          child: Text("Back to Home"),
        ),
      ),
    );
  }
}
