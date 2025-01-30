import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:redux_practice/model/todo/rp_todo_category.dart';
import 'package:redux_practice/redux/action/rp_todo_category_action.dart';
import 'package:redux_practice/resource/initial_categories.dart';

class RPCategoriesNotifier extends StateNotifier<List<RPToDoCategory>> {
  RPCategoriesNotifier() : super(initialCategories);

  /// アクションを処理する
  void dispatch(RPTodoCategoryAction action) {
    state = action.map(
      addCategory: (a) => _addCategory(a.category),
      removeCategory: (a) => _removeCategory(a.categoryId),
    );
  }

  /// カテゴリを追加
  List<RPToDoCategory> _addCategory(RPToDoCategory category) {
    return [...state, category];
  }

  /// カテゴリを削除
  List<RPToDoCategory> _removeCategory(String categoryId) {
    return state.where((category) => category.id != categoryId).toList();
  }
}
