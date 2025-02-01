import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:redux_practice/model/todo/rp_todo.dart';
import 'package:redux_practice/redux/store/rp_app_state_provider.dart';

final rpTodosProvider = Provider<Map<String, List<RPToDo>>>((ref) {
  return ref.watch(rpAppStateProvider.select((state) => state.todos));
});
