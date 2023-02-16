import 'package:flutter/material.dart';

class SecondScreen extends StatelessWidget {
  const SecondScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Second Screen")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Hello World!'),
            SizedBox(
              height: 20,
            ),
            Text("BooleanA and BooleanB"),
            SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}
