import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo_bloc/todo_app/todo_states.dart';

import 'dummy_data.dart';
import 'todo_event.dart';

/// {@template Todo_bloc}
/// A simple [Bloc] that manages an `int` as its state.
/// {@endtemplate}

class TodoBloc extends Bloc<TodoEvent, TodoStates> {
  /// {@macro Todo_bloc}
  // final _eventStreamController = StreamController<TodoAction>();
  // StreamSink<TodoAction> get eventSink => _eventStreamController.sink;
  // Stream<TodoAction> get _eventStream => _eventStreamController.stream;
  TodoBloc() : super(TodoInitialState()) {
    on<TodoFetchPressed>(
        (event, emit) => emit(TodoSuccessTodoDataState(todoList)));
  }
}
