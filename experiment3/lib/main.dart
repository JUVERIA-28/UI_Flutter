import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
      routes: {
        "/details": (context) => DetailsPage(),
      },
    );
  }
}

// --------------------------- HOME PAGE -----------------------------
class HomePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    double width = MediaQuery.of(context).size.width;

    // BREAKPOINTS
    bool isMobile = width < 600;
    bool isTablet = width >= 600 && width < 1024;
    bool isDesktop = width >= 1024;

    return Scaffold(
      appBar: AppBar(
        title: Text("Responsive UI - experiment3"),
        centerTitle: true,
      ),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            // ---------------- MOBILE LAYOUT ----------------
            if (isMobile)
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  responsiveBox(Colors.blue, "Mobile Box 1"),
                  SizedBox(height: 10),
                  responsiveBox(Colors.green, "Mobile Box 2"),
                ],
              ),

            // ---------------- TABLET LAYOUT ----------------
            if (isTablet)
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  responsiveBox(Colors.orange, "Tablet Box 1"),
                  responsiveBox(Colors.purple, "Tablet Box 2"),
                ],
              ),

            // ---------------- DESKTOP LAYOUT ----------------
            if (isDesktop)
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  responsiveBox(Colors.red, "Desktop Box 1"),
                  responsiveBox(Colors.teal, "Desktop Box 2"),
                  responsiveBox(Colors.indigo, "Desktop Box 3"),
                ],
              ),

            SizedBox(height: 30),

            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, "/details");
              },
              child: Text("Go to Details Page"),
            ),
          ],
        ),
      ),
    );
  }

  // A reusable box widget
  Widget responsiveBox(Color color, String text) {
    return Container(
      height: 120,
      width: 120,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Center(
        child: Text(text,
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
      ),
    );
  }
}

// --------------------------- DETAILS PAGE -----------------------------
class DetailsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    double width = MediaQuery.of(context).size.width;

    bool isMobile = width < 600;

    return Scaffold(
      appBar: AppBar(title: Text("Details Page")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              isMobile
                  ? "This is MOBILE view on Details Page"
                  : "This is LARGE SCREEN view on Details Page",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),

            SizedBox(height: 20),

            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text("Back to Home"),
            ),
          ],
        ),
      ),
    );
  }
}
