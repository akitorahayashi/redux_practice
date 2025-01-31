import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:redux_practice/redux/store/edit_category_todo_list/selected_categories_provider.dart';
import 'package:redux_practice/redux/store/todo/rp_todos_provider.dart';
import 'package:redux_practice/redux/action/selected_categories_action.dart';
import 'package:redux_practice/screen/categorized_todo_list_page/add_content_sheet/add_todo_sheet.dart';
import 'todo_item.dart';

class CategorySection extends ConsumerWidget {
  final String categoryId;
  final String categoryName;
  final bool isEditMode;

  const CategorySection({
    super.key,
    required this.categoryId,
    required this.categoryName,
    required this.isEditMode,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final rpTheme = CupertinoTheme.of(context);
    final todos = ref.watch(rpTodosProvider)[categoryId] ?? [];
    final selectedCategories = ref.watch(selectedCategoriesProvider);
    final isSelected = selectedCategories.contains(categoryId);
    final selectedCategoriesNotifier =
        ref.read(selectedCategoriesProvider.notifier);

    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        // チェックボックス（編集モード時に表示）
        AnimatedSwitcher(
          duration: const Duration(milliseconds: 300),
          transitionBuilder: (Widget child, Animation<double> animation) {
            return FadeTransition(
              opacity: animation,
              child: child,
            );
          },
          child: isEditMode
              ? CupertinoCheckbox(
                  key: ValueKey('checkbox-$categoryId'),
                  value: isSelected,
                  activeColor: rpTheme.primaryColor,
                  onChanged: (_) {
                    selectedCategoriesNotifier.dispatch(
                      SelectedCategoriesAction.toggleCategory(
                          categoryId: categoryId),
                    );
                  },
                )
              : const SizedBox.shrink(),
        ),

        // カテゴリーのカード
        Expanded(
          child: GestureDetector(
            onTap: () {
              if (isEditMode) {
                selectedCategoriesNotifier.dispatch(
                  SelectedCategoriesAction.toggleCategory(
                      categoryId: categoryId),
                );
              }
            },
            child: AnimatedContainer(
              duration: const Duration(milliseconds: 300), // アニメーション時間
              curve: Curves.easeInOut, // アニメーションの種類
              margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 8),
              clipBehavior: Clip.hardEdge,
              decoration: BoxDecoration(
                color: isSelected
                    ? CupertinoColors.systemGrey3
                    : CupertinoColors.systemGrey6, // 選択時の背景色を変化
                borderRadius: BorderRadius.circular(12),
                boxShadow: isSelected
                    ? [] // 選択時は影を消す
                    : [
                        BoxShadow(
                          color: CupertinoColors.black.withOpacity(0.2),
                          blurRadius: 6,
                          spreadRadius: 1,
                        ),
                      ], // 選択されていないときは影をつける
              ),
              child: Column(
                children: [
                  // カテゴリー名とToDo追加ボタン
                  Padding(
                    padding: const EdgeInsets.all(12),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          categoryName,
                          style: const TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold),
                        ),
                        // ToDo追加ボタン（編集モード時は非表示）
                        SizedBox(
                          width: 24,
                          height: 24,
                          child: AnimatedSwitcher(
                            duration: const Duration(milliseconds: 300),
                            transitionBuilder:
                                (Widget child, Animation<double> animation) {
                              return FadeTransition(
                                opacity: animation,
                                child: child,
                              );
                            },
                            child: isEditMode
                                ? const SizedBox.shrink()
                                : CupertinoButton(
                                    key: ValueKey('addButton-$categoryId'),
                                    padding: EdgeInsets.zero,
                                    child: const Icon(
                                      CupertinoIcons.add_circled,
                                      size: 24,
                                    ),
                                    onPressed: () =>
                                        showAddTodoSheet(context, categoryId),
                                  ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  // ToDoリスト
                  Padding(
                    padding: const EdgeInsets.only(bottom: 12.0),
                    child: Column(
                      children:
                          todos.map((todo) => TodoItem(todo: todo)).toList(),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
