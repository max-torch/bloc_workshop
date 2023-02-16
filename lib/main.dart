import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'bloc/first_boolean_bloc.dart';
import 'presentation/screens/first_screen.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => FirstBooleanBloc(),
      child: MaterialApp(
        home: FirstScreen(),
      ),
    );
  }
}
