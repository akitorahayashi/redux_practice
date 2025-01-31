import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:redux_practice/redux/reducer/selected_categories_notifier.dart';

/// 選択されたカテゴリを管理する NotifierProvider
final selectedCategoriesProvider =
    StateNotifierProvider<SelectedCategoriesNotifier, Set<String>>(
        (ref) => SelectedCategoriesNotifier());
