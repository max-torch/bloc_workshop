import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'second_boolean_event.dart';

class SecondBooleanBloc extends Bloc<SecondBooleanEvent, bool> {
  SecondBooleanBloc() : super(true) {
    on<SecondBooleanEvent>((event, emit) {
      final bool toggledState = !state;
      emit(toggledState);
    });
  }
}
