import 'package:flutter/material.dart';
import 'models/todo_list.dart';
import 'views/todo_list_view.dart';
import 'viewmodels/todo_list_view_model.dart';

void main() 
{
  final todoList = InMemoryTodoList();
  final viewModel = TodoListViewModel(todoList);

  runApp(MyApp(viewModel));
}

class MyApp extends StatelessWidget 
{
  final TodoListViewModel viewModel;

  const MyApp(this.viewModel, {super.key});

  @override
  Widget build(BuildContext context) 
  {
    return MaterialApp(
      title: 'Todo MVVM Demo',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: TodoListView(viewModel: viewModel),
    );
  }
}