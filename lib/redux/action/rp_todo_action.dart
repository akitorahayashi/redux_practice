import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:redux_practice/model/todo/rp_todo.dart';

part 'generate/rp_todo_action.freezed.dart';

// flutter pub run build_runner build

@freezed
class RPTodoAction with _$RPTodoAction {
  const factory RPTodoAction.addTodo({
    required String categoryId,
    required RPToDo todo,
  }) = AddTodoAction;

  const factory RPTodoAction.removeTodo({
    required String categoryId,
    required String todoId,
  }) = RemoveTodoAction;

  const factory RPTodoAction.toggleTodo({
    required String categoryId,
    required String todoId,
  }) = ToggleTodoAction;
}
