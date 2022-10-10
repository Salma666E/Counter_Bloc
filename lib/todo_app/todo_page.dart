import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo_bloc/theme_cubit.dart';
import 'package:todo_bloc/todo_app/todo_states.dart';

import 'todo_bloc.dart';
import 'todo_event.dart';

/// {@template Todo_page}
/// A [StatelessWidget] that:
/// * provides a [TodoBloc] to the [TodoView].
/// {@endtemplate}
class TodoPage extends StatelessWidget {
  /// {@macro Todo_page}
  const TodoPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => TodoBloc(),
      child: const TodoView(),
    );
  }
}

/// {@template Todo_view}
/// A [StatelessWidget] that:
/// * demonstrates how to consume and interact with a [TodoBloc].
/// {@endtemplate}
class TodoView extends StatelessWidget {
  /// {@macro Todo_view}
  const TodoView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Todo')),
      body: Center(
        child: BlocBuilder<TodoBloc, TodoStates>(
          builder: (context, count) {
            return Text('${count}',
                style: Theme.of(context).textTheme.headline1);
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.brightness_6),
        onPressed: () {
          context.read<ThemeCubit>().toggleTheme();
        },
      ),
    );
  }
}
