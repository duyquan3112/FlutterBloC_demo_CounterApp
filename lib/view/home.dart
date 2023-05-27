import 'package:demo_bloc/bloc/counter_bloc.dart';
import 'package:demo_bloc/bloc/counter_event.dart';
import 'package:demo_bloc/bloc/counter_provider.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  _increase(BuildContext context) {
    context.read<CounterBloc>().add(CounterIncrementEvent());
  }

  _decrease(BuildContext context) {
    context.read<CounterBloc>().add(CounterDecrementEvent());
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return CounterProvider(child: Scaffold(
      body: BlocBuilder<CounterBloc, int>(
        builder: (context, state) {
          return Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('$state'),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    _customButton('+', () => _increase(context)),
                    _customButton('-', () => _decrease(context))
                  ],
                )
              ],
            ),
          );
        },
      ),
    ));
  }
}

Widget _customButton(String text, Function() onPressed) {
  return ElevatedButton(onPressed: onPressed, child: Text(text));
}
