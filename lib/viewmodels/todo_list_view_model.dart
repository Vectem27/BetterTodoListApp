import '../models/todo_list.dart';

class TodoListViewModel
{
  final TodoListInterface _todoList;

  TodoListViewModel(this._todoList);

  List<TodoListElement> get todoList => _todoList.todoList;

  void addNewTodoWithTitle(String title) {
    final newElement = SimpleTodoListElement(title);
    _todoList.addTodoListElement(newElement);
  }

  void updateTodoTitle(TodoListElement element, String newTitle) {
    element.title = newTitle;
  }

  bool removeTodo(TodoListElement element) {
    return _todoList.removeTodoListElement(element);
  }
}