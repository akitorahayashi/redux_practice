import 'package:redux_practice/model/todo/rp_todo.dart';
import 'package:redux_practice/redux/action/rp_todo_action.dart';

class RPTodosReducer {
  static Map<String, List<RPToDo>> handle(
      Map<String, List<RPToDo>> todos, RPTodoAction action) {
    return action.map(
      addTodo: (a) => _addTodo(todos, a.categoryId, a.todo),
      removeTodo: (a) => _removeTodo(todos, a.categoryId, a.todoId),
    );
  }

  static Map<String, List<RPToDo>> _addTodo(
      Map<String, List<RPToDo>> todos, String categoryId, RPToDo todo) {
    return {
      ...todos,
      categoryId: [...(todos[categoryId] ?? []), todo],
    };
  }

  static Map<String, List<RPToDo>> _removeTodo(
      Map<String, List<RPToDo>> todos, String categoryId, String todoId) {
    return {
      ...todos,
      categoryId:
          todos[categoryId]?.where((todo) => todo.id != todoId).toList() ?? [],
    };
  }
}
