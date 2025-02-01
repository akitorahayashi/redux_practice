import 'package:redux_practice/model/todo/rp_todo_category.dart';
import 'package:redux_practice/redux/action/rp_todo_category_action.dart';

class RpCategoriesReducer {
  static List<RPToDoCategory> handle(
      List<RPToDoCategory> categories, RPTodoCategoryAction action) {
    return action.map(
      addCategory: (a) => _addCategory(categories, a.category),
      removeCategory: (a) => _removeCategory(categories, a.categoryId),
    );
  }

  static List<RPToDoCategory> _addCategory(
      List<RPToDoCategory> categories, RPToDoCategory category) {
    return [...categories, category];
  }

  static List<RPToDoCategory> _removeCategory(
      List<RPToDoCategory> categories, String categoryId) {
    return categories.where((category) => category.id != categoryId).toList();
  }
}
