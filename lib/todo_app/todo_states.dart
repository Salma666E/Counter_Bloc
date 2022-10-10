import 'package:flutter/material.dart';
import 'package:todo_bloc/todo_app/dummy_data.dart';

abstract class TodoStates {}

class TodoInitialState extends TodoStates {}

class TodoLoadingTodoDataState extends TodoStates {}

class TodoSuccessTodoDataState extends TodoStates {
  List todo = [];
  TodoSuccessTodoDataState(todo);
}

class TodoErrorTodoDataState extends TodoStates {}
