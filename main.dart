import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class HomePage extends StatelessWidget {
  Widget buildBox(String text, Color color) {
    return Container(
      width: 80,
      height: 80,
      color: color,
      alignment: Alignment.center,
      child: Text(
        text,
        style: TextStyle(color: Colors.white, fontSize: 20),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Column and Row Layout",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.green,
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            // Top Row (1, 2, 3)
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                buildBox("1", Colors.red),
                buildBox("2", Colors.green),
                buildBox("3", Colors.blue),
              ],
            ),

            // Large Container
            Container(
              width: double.infinity,
              height: 100,
              color: Colors.orange,
              alignment: Alignment.center,
              child: Text(
                "Large Container",
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
            ),

            // Bottom Row (Left, Right)
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                buildBox("Left", Colors.purple),
                buildBox("Right", Colors.teal),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
