import 'package:flutter/material.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("First Screen")),
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
            ElevatedButton(
                child: Text("Toggle First Boolean Bloc"), onPressed: () {}),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
                child: Text("Toggle Second Boolean Bloc"), onPressed: () {}),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(child: Text("To Second Page"), onPressed: () {}),
          ],
        ),
      ),
    );
  }
}
