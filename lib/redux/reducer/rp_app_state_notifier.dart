import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:redux_practice/model/rp_app_state.dart';
import 'package:redux_practice/redux/action/rp_theme_action.dart';
import 'package:redux_practice/redux/action/rp_todo_action.dart';
import 'package:redux_practice/redux/action/rp_todo_category_action.dart';
import 'package:redux_practice/redux/reducer/property/rp_categories_reducer.dart';
import 'package:redux_practice/redux/reducer/property/rp_theme_reducer';
import 'package:redux_practice/redux/reducer/property/rp_todos_reducer.dart';

class RPAppStateNotifier extends StateNotifier<RPAppState> {
  RPAppStateNotifier() : super(const RPAppState());

  void dispatchTodoAction(RPTodoAction action) {
    state = state.copyWith(
      todos: RPToDosReducer.handle(state.todos, action),
    );
  }

  void dispatchCategoryAction(RPTodoCategoryAction action) {
    state = state.copyWith(
      categories: RpCategoriesReducer.handle(state.categories, action),
    );
  }

  void dispatchThemeAction(RPThemeAction action) {
    state = state.copyWith(
      selectedThemeType: RPThemeReducer.handle(state.selectedThemeType, action),
    );
  }
}
