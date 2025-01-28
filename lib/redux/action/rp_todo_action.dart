import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:redux_practice/model/todo/rp_todo.dart';

part 'generate/rp_todo_action.freezed.dart';

// flutter pub run build_runner build

@freezed
class RPTodoAction with _$RPTodoAction {
  /// 新しいTodoを追加する
  const factory RPTodoAction.addTodo({
    required RPToDo todo,
  }) = AddTodoAction;

  /// Todoを削除する
  const factory RPTodoAction.removeTodo({
    required String todoId,
  }) = RemoveTodoAction;

  /// Todoのチェック状態を切り替える
  const factory RPTodoAction.toggleTodo({
    required String todoId,
  }) = ToggleTodoAction;
}
