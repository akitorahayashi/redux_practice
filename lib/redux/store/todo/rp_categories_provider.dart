import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:redux_practice/model/todo/rp_todo_category.dart';
import 'package:redux_practice/redux/store/rp_app_state_provider.dart';

final rpCategoriesProvider = Provider<List<RPToDoCategory>>((ref) {
  return ref.watch(rpAppStateProvider.select((state) => state.categories));
});
