import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'bloc/data/some_api.dart';
import 'bloc/first_boolean/first_boolean_bloc.dart';
import 'bloc/second_boolean/second_boolean_bloc.dart';
import 'bloc_observer.dart';
import 'presentation/screens/first_screen.dart';

void main() {
  Bloc.observer = SimpleBlocObserver();
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return RepositoryProvider(
      create: (context) => SomeAPIRepository(),
      child: MultiBlocProvider(
        providers: [
          BlocProvider<FirstBooleanBloc>(
              create: (BuildContext context) => FirstBooleanBloc()),
          BlocProvider<SecondBooleanBloc>(
              create: (BuildContext context) => SecondBooleanBloc(
                  someAPIRepository:
                      RepositoryProvider.of<SomeAPIRepository>(context))),
        ],
        child: MaterialApp(
          home: FirstScreen(),
        ),
      ),
    );
  }
}
