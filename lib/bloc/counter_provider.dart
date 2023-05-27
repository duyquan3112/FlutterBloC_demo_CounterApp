import 'package:demo_bloc/bloc/counter_bloc.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterProvider extends StatelessWidget {
  final Widget child;
  const CounterProvider({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<CounterBloc>(
      create: (context) => CounterBloc(),
      child: child,
    );
  }
}
