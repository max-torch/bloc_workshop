import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'first_boolean_event.dart';

class FirstBooleanBloc extends Bloc<FirstBooleanEvent, bool> {
  FirstBooleanBloc() : super(true) {
    on<FirstBooleanEvent>(_onFirstBooleanEvent);
  }

  FutureOr<void> _onFirstBooleanEvent(event, emit) {
    final bool toggledState = !state;
    emit(toggledState);
  }
}
