abstract class TodoListElement
{
  String get title;

  set title(String value);
}

abstract class TodoListInterface
{
  List<TodoListElement> get todoList;
  
  bool addTodoListElement(TodoListElement element);

  bool removeTodoListElement(TodoListElement element);

  bool setTodoListElementIndex(TodoListElement element, int index);
}





class SimpleTodoListElement implements TodoListElement {
  String _title;

  SimpleTodoListElement(this._title);

  @override
  String get title => _title;

  @override
  set title(String value) {
    _title = value;
  }
}

class InMemoryTodoList implements TodoListInterface {
  final List<TodoListElement> _todoList = [];

  @override
  List<TodoListElement> get todoList => List.unmodifiable(_todoList);

  @override
  bool addTodoListElement(TodoListElement element) {
    _todoList.add(element);
    return true;
  }

  @override
  bool removeTodoListElement(TodoListElement element) {
    return _todoList.remove(element);
  }

  @override
  bool setTodoListElementIndex(TodoListElement element, int index) {
    if (!_todoList.contains(element) || index < 0 || index >= _todoList.length) {
      return false;
    }
    _todoList.remove(element);
    _todoList.insert(index, element);
    return true;
  }
}