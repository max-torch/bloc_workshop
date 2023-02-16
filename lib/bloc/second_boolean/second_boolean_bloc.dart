import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

import '../data/some_api.dart';

part 'second_boolean_event.dart';

class SecondBooleanBloc extends Bloc<SecondBooleanEvent, bool> {
  final SomeAPIRepository someAPIRepository;

  SecondBooleanBloc({
    required this.someAPIRepository,
  }) : super(true) {
    on<SecondButtonPressed>(_onSecondButtonPressed);
    on<WriteDataButtonPressed>(_onWriteDataButtonPressed);
  }

  FutureOr<void> _onSecondButtonPressed(event, emit) {
    final bool toggledState = !state;
    emit(toggledState);
  }

  FutureOr<void> _onWriteDataButtonPressed(event, emit) {
    someAPIRepository.writeData("Second Bool state is ${state.toString()}");
  }
}
