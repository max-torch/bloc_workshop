import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../bloc/first_boolean/first_boolean_bloc.dart';
import '../../bloc/second_boolean/second_boolean_bloc.dart';
import 'second_screen.dart';

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
            Builder(builder: (context) {
              final stateA = context.watch<FirstBooleanBloc>().state;
              final stateB = context.watch<SecondBooleanBloc>().state;
              return Text(
                  "${stateA.toString().toUpperCase()} and ${stateB.toString().toUpperCase()}");
            }),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
                child: Text("Toggle First Boolean Bloc"),
                onPressed: () =>
                    context.read<FirstBooleanBloc>().add(FirstButtonPressed())),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
                child: Text("Toggle Second Boolean Bloc"),
                onPressed: () => context
                    .read<SecondBooleanBloc>()
                    .add(SecondButtonPressed())),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
              child: Text("To Second Page"),
              onPressed: () => Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => const SecondScreen()),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
