import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:redux_practice/redux/store/rp_app_state_provider.dart';
import 'package:redux_practice/redux/store/todo/rp_categories_provider.dart';
import 'package:redux_practice/screen/categorized_todo_list_page/add_content_sheet/add_category_sheet.dart';
import 'package:redux_practice/screen/categorized_todo_list_page/component/category_section.dart';
import 'package:redux_practice/redux/action/rp_todo_category_action.dart';
import 'package:redux_practice/redux/action/selected_categories_action.dart';
import 'package:redux_practice/redux/store/edit_category_todo_list/edit_mode_provider.dart';
import 'package:redux_practice/redux/store/edit_category_todo_list/selected_categories_provider.dart';

class CategorizedToDoListPage extends ConsumerWidget {
  const CategorizedToDoListPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final rpTheme = CupertinoTheme.of(context);

    final isEditMode = ref.watch(editModeFlugProvider);
    final categories = ref.watch(rpCategoriesProvider);
    final selectedCategories = ref.watch(selectedEditingCategoriesProvider);

    final appStateNotifier = ref.read(rpAppStateProvider.notifier);
    final selectedEditingCategoriesNotifier =
        ref.read(selectedEditingCategoriesProvider.notifier);

    return CupertinoPageScaffold(
      backgroundColor: rpTheme.scaffoldBackgroundColor,
      navigationBar: CupertinoNavigationBar(
        backgroundColor: rpTheme.barBackgroundColor,
        middle: Text(
          'Redux Practice',
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w700,
            color: CupertinoDynamicColor.resolve(rpTheme.primaryColor, context),
          ),
        ),
        leading: CupertinoButton(
          padding: EdgeInsets.zero,
          onPressed: () {
            ref.read(editModeFlugProvider.notifier).state = !isEditMode;
            selectedEditingCategoriesNotifier
                .dispatch(const SelectedCategoriesAction.clearSelection());
          },
          child: AnimatedSwitcher(
            duration: const Duration(milliseconds: 300),
            transitionBuilder: (Widget child, Animation<double> animation) {
              return FadeTransition(
                opacity: animation,
                child: ScaleTransition(scale: animation, child: child),
              );
            },
            child: isEditMode
                ? Icon(
                    CupertinoIcons.checkmark_square,
                    key: const ValueKey('doneIcon'),
                    size: 24,
                    color: rpTheme.primaryColor,
                  )
                : Icon(
                    CupertinoIcons.square,
                    key: const ValueKey('editIcon'),
                    size: 24,
                    color: rpTheme.primaryColor,
                  ),
          ),
        ),
        trailing: CupertinoButton(
          padding: EdgeInsets.zero,
          child: Icon(
            CupertinoIcons.add,
            size: 28,
            color: rpTheme.primaryColor,
          ),
          onPressed: () => showAddCategorySheet(context),
        ),
      ),
      child: SafeArea(
        child: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: [
                  Expanded(
                    child: ListView.separated(
                      padding: const EdgeInsets.symmetric(horizontal: 8),
                      itemCount: categories.length + 1,
                      separatorBuilder: (_, __) => const SizedBox(height: 8),
                      itemBuilder: (context, index) {
                        if (index == categories.length) {
                          return const SizedBox(height: 200);
                        }
                        final category = categories[index];
                        return CategorySection(
                          categoryId: category.id,
                          categoryName: category.name,
                          isEditMode: isEditMode,
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
              bottom: 32,
              left: 16,
              right: 16,
              child: AnimatedSwitcher(
                duration: const Duration(milliseconds: 300),
                transitionBuilder: (Widget child, Animation<double> animation) {
                  return FadeTransition(
                    opacity: animation,
                    child: child,
                  );
                },
                child: (isEditMode && selectedCategories.isNotEmpty)
                    ? Container(
                        key: const ValueKey('deleteButton'),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          border: Border.all(
                            color: CupertinoDynamicColor.resolve(
                                CupertinoColors.separator, context),
                          ),
                          boxShadow: [
                            BoxShadow(
                              color: CupertinoDynamicColor.resolve(
                                      CupertinoColors.systemFill, context)
                                  .withOpacity(0.2),
                              blurRadius: 6,
                              spreadRadius: 2,
                            ),
                          ],
                        ),
                        child: CupertinoButton.filled(
                          child: Text(
                            '選択したカテゴリを削除',
                            style: TextStyle(
                              fontWeight: FontWeight.w900,
                              color: CupertinoDynamicColor.resolve(
                                  CupertinoColors.white, context),
                            ),
                          ),
                          onPressed: () {
                            for (var categoryId in selectedCategories) {
                              appStateNotifier.dispatchCategoryAction(
                                RPTodoCategoryAction.removeCategory(
                                    categoryId: categoryId),
                              );
                            }
                            selectedEditingCategoriesNotifier.dispatch(
                                const SelectedCategoriesAction
                                    .clearSelection());
                          },
                        ),
                      )
                    : const SizedBox.shrink(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
