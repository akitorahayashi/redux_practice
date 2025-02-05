import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:redux_practice/redux/action/selected_categories_action.dart';

class SelectedCategoriesNotifier extends StateNotifier<Set<String>> {
  SelectedCategoriesNotifier() : super({});

  /// アクションを処理する
  void dispatch(SelectedCategoriesAction action) {
    state = action.map(
      toggleCategory: (a) => _toggleCategory(a.categoryId),
      clearSelection: (_) => _clearSelection(),
    );
  }

  /// カテゴリを選択・解除する
  Set<String> _toggleCategory(String categoryId) {
    final newState = Set<String>.from(state);
    if (newState.contains(categoryId)) {
      newState.remove(categoryId);
    } else {
      newState.add(categoryId);
    }
    return newState;
  }

  /// すべての選択を解除する
  Set<String> _clearSelection() {
    return {};
  }
}
