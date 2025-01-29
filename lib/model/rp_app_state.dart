import 'package:redux_practice/model/todo/rp_todo.dart';
import 'package:redux_practice/model/todo/rp_todo_category.dart';

class RPAppState {
  final Map<String, List<RPToDo>> todos;
  final List<RPToDoCategory> categories;

  RPAppState({
    required this.todos,
    required this.categories,
  });

  RPAppState copyWith({
    Map<String, List<RPToDo>>? todos,
    List<RPToDoCategory>? categories,
  }) {
    return RPAppState(
      todos: todos ?? this.todos,
      categories: categories ?? this.categories,
    );
  }
}
