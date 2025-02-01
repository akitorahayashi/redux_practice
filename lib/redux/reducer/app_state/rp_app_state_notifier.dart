import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:redux_practice/model/rp_app_state.dart';
import 'package:redux_practice/redux/action/rp_todo_action.dart';
import 'package:redux_practice/redux/action/rp_todo_category_action.dart';
import 'package:redux_practice/redux/reducer/todo/rp_categories_reducer.dart';
import 'package:redux_practice/redux/reducer/todo/rp_todos_reducer.dart';

class RPAppStateNotifier extends StateNotifier<RPAppState> {
  RPAppStateNotifier() : super(const RPAppState());

  void dispatchTodoAction(RPTodoAction action) {
    state = state.copyWith(
      todos: RPTodoReducer.handle(state.todos, action),
    );
  }

  void dispatchCategoryAction(RPTodoCategoryAction action) {
    state = state.copyWith(
      categories: RpCategoriesReducer.handle(state.categories, action),
    );
  }
}
