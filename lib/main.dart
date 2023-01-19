import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo_bloc/todo_app/app.dart';

import 'bloc_observer.dart';

void main() {
  Bloc.observer = MyBlocObserver();
  runApp(const TodoApp());
  // runApp(const TodoApp());
}