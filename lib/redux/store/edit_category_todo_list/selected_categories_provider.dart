import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:redux_practice/redux/reducer/selected_categories_notifier.dart';

final selectedEditingCategoriesProvider =
    StateNotifierProvider<SelectedCategoriesNotifier, Set<String>>(
        (ref) => SelectedCategoriesNotifier());
