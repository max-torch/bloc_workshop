import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'second_boolean_event.dart';

class SecondBooleanBloc extends Bloc<SecondBooleanEvent, bool> {
  SecondBooleanBloc() : super(true) {
    on<SecondBooleanEvent>(_onSecondBooleanEvent);
  }

  FutureOr<void> _onSecondBooleanEvent(event, emit) {
    final bool toggledState = !state;
    emit(toggledState);
  }
}
