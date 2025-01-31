import 'package:freezed_annotation/freezed_annotation.dart';

part 'generate/selected_categories_action.freezed.dart';

// flutter pub run build_runner build

@freezed
class SelectedCategoriesAction with _$SelectedCategoriesAction {
  const factory SelectedCategoriesAction.toggleCategory({
    required String categoryId,
  }) = ToggleCategoryAction;

  const factory SelectedCategoriesAction.clearSelection() =
      ClearSelectionAction;
}
