import 'package:flutter/material.dart';
import '../viewmodels/todo_list_view_model.dart';

class TodoListView extends StatefulWidget {
  final TodoListViewModel viewModel;

  const TodoListView({super.key, required this.viewModel});

  @override
  State<TodoListView> createState() => _TodoListViewState();
}

class _TodoListViewState extends State<TodoListView> {
  void _showAddDialog() {
    final controller = TextEditingController();

    showDialog(
      context: context,
      builder: (_) => AlertDialog(
        title: const Text('Nouvelle tâche'),
        content: TextField(
          controller: controller,
          autofocus: true,
          decoration: const InputDecoration(hintText: 'Titre'),
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text('Annuler'),
          ),
          TextButton(
            onPressed: () {
              final text = controller.text.trim();
              if (text.isNotEmpty) {
                setState(() {
                  widget.viewModel.addNewTodoWithTitle(text);
                });
                Navigator.pop(context);
              }
            },
            child: const Text('Ajouter'),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final todos = widget.viewModel.todoList;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Todo List MVVM'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _showAddDialog,
        child: const Icon(Icons.add),
      ),
      body: ListView.builder(
        itemCount: todos.length,
        itemBuilder: (context, index) {
          final todo = todos[index];
          final controller = TextEditingController(text: todo.title);

          return ListTile(
            title: TextField(
              controller: controller,
              decoration: const InputDecoration(border: InputBorder.none),
              onChanged: (value) {
                widget.viewModel.updateTodoTitle(todo, value);
              },
            ),
            trailing: IconButton(
              icon: const Icon(Icons.delete),
              onPressed: () {
                setState(() {
                  widget.viewModel.removeTodo(todo);
                });
              },
            ),
          );
        },
      ),
    );
  }
}
