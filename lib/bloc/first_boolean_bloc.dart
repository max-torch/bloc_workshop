import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'first_boolean_event.dart';

  FirstBooleanBloc() : super(FirstBooleanInitial()) {
class FirstBooleanBloc extends Bloc<FirstBooleanEvent, bool> {
    on<FirstBooleanEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
