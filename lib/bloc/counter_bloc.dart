import 'package:bloc/bloc.dart';
import 'package:demo_bloc/bloc/counter_event.dart';

class CounterBloc extends Bloc<CounterEvent, int> {
  CounterBloc() : super(0) {
    on<CounterIncrementEvent>((event, emit) => _increment(emit));
    on<CounterDecrementEvent>((event, emit) => _decrement(emit));
  }

  _increment(Emitter emit) {
    emit(state + 1);
  }

  _decrement(Emitter emit) {
    emit(state - 1);
  }
}
