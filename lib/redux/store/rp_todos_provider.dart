import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:redux_practice/redux/reducer/rp_todos_notifier.dart';
import 'package:redux_practice/model/todo/rp_todo.dart';

final rpTodosProvider =
    StateNotifierProvider<RPTodosNotifier, Map<String, List<RPToDo>>>(
  (ref) => RPTodosNotifier(),
);
