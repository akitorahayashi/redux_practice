import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:redux_practice/model/todo/rp_todo_category.dart';

part 'generate/rp_todo_category_action.freezed.dart';

// flutter pub run build_runner build

@freezed
class RPTodoCategoryAction with _$RPTodoCategoryAction {
  const factory RPTodoCategoryAction.addCategory({
    required RPToDoCategory category,
  }) = AddCategoryAction;

  const factory RPTodoCategoryAction.removeCategory({
    required String categoryId,
  }) = RemoveCategoryAction;
}
