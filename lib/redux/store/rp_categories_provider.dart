import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:redux_practice/redux/reducer/rp_todo_category_notifier.dart';
import 'package:redux_practice/model/todo/rp_todo_category.dart';

final rpCategoriesProvider =
    StateNotifierProvider<RPCategoriesNotifier, List<RPToDoCategory>>(
  (ref) => RPCategoriesNotifier(),
);
