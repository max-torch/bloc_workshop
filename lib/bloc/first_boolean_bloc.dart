import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'first_boolean_event.dart';

class FirstBooleanBloc extends Bloc<FirstBooleanEvent, FirstBooleanState> {
  FirstBooleanBloc() : super(FirstBooleanInitial()) {
    on<FirstBooleanEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
