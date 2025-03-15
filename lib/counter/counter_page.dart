import 'package:bloccounter/counter/counter_cubit.dart';
import 'package:bloccounter/counter/counter_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterPage extends StatelessWidget {
  const CounterPage({super.key});

  @override
  Widget build(BuildContext context) {
  
    // counter provider
    return BlocProvider(
      create: (context) => CounterCubit(0),
      child: BlocListener<CounterCubit, int>(
        listener: (context, state) {
          // show a dialog box
          if (state == 10) {
            showDialog(
              context: context, 
              builder: (context) => AlertDialog(
                content: Text("Hey, You reached 10"),
              ),
            );
          }
        },
        // UI
        child: const CounterView(),
      ),
    );
  }
}