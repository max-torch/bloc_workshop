import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../bloc/first_boolean/first_boolean_bloc.dart';
import '../../bloc/second_boolean/second_boolean_bloc.dart';

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
            Builder(builder: (context) {
              final stateA = context.watch<FirstBooleanBloc>().state;
              final stateB = context.watch<SecondBooleanBloc>().state;
              return Text(
                  "${stateA.toString().toUpperCase()} and ${stateB.toString().toUpperCase()}");
            }),
            SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}
