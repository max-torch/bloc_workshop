import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'first_boolean_event.dart';

class FirstBooleanBloc extends Bloc<FirstBooleanEvent, bool> {
  FirstBooleanBloc() : super(true) {
    on<FirstBooleanEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
