import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:redux_practice/model/todo/rp_todo.dart';
import 'package:redux_practice/model/todo/rp_todo_category.dart';
import 'package:redux_practice/resource/initial_values/initial_categories.dart';
import 'package:redux_practice/resource/initial_values/initial_todos.dart';

part 'generate/rp_app_state.freezed.dart';
part 'generate/rp_app_state.g.dart';

// flutter pub run build_runner build

@freezed
class RPAppState with _$RPAppState {
  const factory RPAppState({
    @Default(initialTodos) Map<String, List<RPToDo>> todos,
    @Default(initialCategories) List<RPToDoCategory> categories,
  }) = _RPAppState;

  factory RPAppState.fromJson(Map<String, dynamic> json) =>
      _$RPAppStateFromJson(json);
}
