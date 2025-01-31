import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:redux_practice/redux/store/rp_todos_provider.dart';
import 'package:redux_practice/redux/store/edit_mode_provider.dart';
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
    final todos = ref.watch(rpTodosProvider)[categoryId] ?? [];
    final selectedCategories = ref.watch(selectedCategoriesProvider);

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
                  value: selectedCategories.contains(categoryId),
                  onChanged: (bool? value) {
                    final newSelected = Set<String>.from(selectedCategories);
                    if (value == true) {
                      newSelected.add(categoryId);
                    } else {
                      newSelected.remove(categoryId);
                    }
                    ref.read(selectedCategoriesProvider.notifier).state =
                        newSelected;
                  },
                )
              : const SizedBox.shrink(),
        ),

        // カテゴリーのカード
        Expanded(
          child: GestureDetector(
            onTap: () {
              if (isEditMode) {
                final newSelected = Set<String>.from(selectedCategories);
                if (newSelected.contains(categoryId)) {
                  newSelected.remove(categoryId);
                } else {
                  newSelected.add(categoryId);
                }
                ref.read(selectedCategoriesProvider.notifier).state =
                    newSelected;
              }
            },
            child: Container(
              margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 8),
              clipBehavior: Clip.hardEdge,
              decoration: BoxDecoration(
                color: selectedCategories.contains(categoryId)
                    ? CupertinoColors.systemGrey5
                    : CupertinoColors.systemGrey6,
                borderRadius: BorderRadius.circular(12),
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
