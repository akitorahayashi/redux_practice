import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:redux_practice/model/todo/rp_todo.dart';
import 'package:redux_practice/redux/action/rp_todo_action.dart';
import 'package:redux_practice/resource/initial_todos.dart';

class RPTodosNotifier extends StateNotifier<Map<String, List<RPToDo>>> {
  RPTodosNotifier() : super(initialTodos);

  /// アクションを処理する
  void dispatch(RPTodoAction action) {
    state = action.map(
      addTodo: (a) => _addTodo(a.categoryId, a.todo),
      removeTodo: (a) => _removeTodo(a.categoryId, a.todoId),
      toggleTodo: (a) => _toggleTodo(a.categoryId, a.todoId),
    );
  }

  /// Todo を追加
  Map<String, List<RPToDo>> _addTodo(String categoryId, RPToDo todo) {
    return {
      ...state,
      categoryId: [...(state[categoryId] ?? []), todo],
    };
  }

  /// Todo を削除
  Map<String, List<RPToDo>> _removeTodo(String categoryId, String todoId) {
    return {
      ...state,
      categoryId:
          state[categoryId]?.where((todo) => todo.id != todoId).toList() ?? [],
    };
  }

  /// Todo のチェック状態を切り替え
  Map<String, List<RPToDo>> _toggleTodo(String categoryId, String todoId) {
    return {
      ...state,
      categoryId: state[categoryId]
              ?.map((todo) => todo.id == todoId
                  ? todo.copyWith(isChecked: !todo.isChecked)
                  : todo)
              .toList() ??
          [],
    };
  }
}
