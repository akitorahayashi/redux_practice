import 'package:flutter/cupertino.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:redux_practice/model/todo/rp_todo_category.dart';
import 'package:redux_practice/redux/reducer/rp_app_state_notifier.dart';
import 'package:redux_practice/redux/store/rp_app_state_provider.dart';
import 'package:redux_practice/view/categorized_todo_list_page/add_content_sheet/add_category_sheet.dart';
import 'package:redux_practice/view/categorized_todo_list_page/component/category_section.dart';
import 'package:redux_practice/redux/action/rp_todo_category_action.dart';
import 'package:redux_practice/view/settings_page/settings_page.dart';

class CategorizedToDoListPage extends HookConsumerWidget {
  const CategorizedToDoListPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final rpTheme = CupertinoTheme.of(context);
    final isEditMode = useState(false);
    final categories =
        ref.watch(rpAppStateProvider.select((state) => state.categories));
    final appStateNotifier = ref.read(rpAppStateProvider.notifier);
    final selectedEditingCategoryIDs = useState<Set<String>>({});

    return CupertinoPageScaffold(
      backgroundColor: rpTheme.scaffoldBackgroundColor,
      navigationBar: _buildNavigationBar(
        context,
        rpTheme,
        isEditMode,
        selectedEditingCategoryIDs,
      ),
      child: SafeArea(
        child: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: _buildCategoryList(
                context,
                categories,
                isEditMode,
                selectedEditingCategoryIDs,
              ),
            ),
            _buildDeleteButton(
              context,
              isEditMode,
              selectedEditingCategoryIDs,
              appStateNotifier,
            ),
            _buildFloatingActionButton(context, isEditMode, rpTheme),
          ],
        ),
      ),
    );
  }

  // MARK: - Navigation Bar
  CupertinoNavigationBar _buildNavigationBar(
    BuildContext context,
    CupertinoThemeData rpTheme,
    ValueNotifier<bool> isEditMode,
    ValueNotifier<Set<String>> selectedEditingCategoryIDs,
  ) {
    return CupertinoNavigationBar(
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
          isEditMode.value = !isEditMode.value;
          selectedEditingCategoryIDs.value = {};
        },
        child: AnimatedSwitcher(
          duration: const Duration(milliseconds: 300),
          transitionBuilder: (Widget child, Animation<double> animation) {
            return FadeTransition(
              opacity: animation,
              child: ScaleTransition(scale: animation, child: child),
            );
          },
          child: isEditMode.value
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
          CupertinoIcons.gear_alt,
          size: 28,
          color: rpTheme.primaryColor,
        ),
        onPressed: () {
          Navigator.push(
            context,
            CupertinoPageRoute(builder: (context) => const SettingsPage()),
          );
        },
      ),
    );
  }

  // MARK: - Category List
  Widget _buildCategoryList(
    BuildContext context,
    List<RPToDoCategory> categories,
    ValueNotifier<bool> isEditMode,
    ValueNotifier<Set<String>> selectedEditingCategoryIDs,
  ) {
    return Column(
      children: [
        Expanded(
          child: ListView.separated(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            itemCount: categories.length + 1, // 最後にスペース用のアイテムを追加
            separatorBuilder: (_, __) => const SizedBox(height: 8),
            itemBuilder: (context, index) {
              if (index == categories.length) {
                return const SizedBox(height: 200); // 一番下のスペース
              }
              final category = categories[index];
              return Padding(
                padding: EdgeInsets.only(top: index == 0 ? 16.0 : 0),
                child: CategorySection(
                  categoryId: category.id,
                  categoryName: category.name,
                  isEditMode: isEditMode.value,
                  isSelected:
                      selectedEditingCategoryIDs.value.contains(category.id),
                  onEditCheckmarkPressed: () {
                    final newSelection =
                        Set<String>.from(selectedEditingCategoryIDs.value);
                    if (newSelection.contains(category.id)) {
                      newSelection.remove(category.id);
                    } else {
                      newSelection.add(category.id);
                    }
                    selectedEditingCategoryIDs.value = newSelection;
                  },
                ),
              );
            },
          ),
        ),
      ],
    );
  }

  // MARK: - Floating Action Button
  Widget _buildFloatingActionButton(
    BuildContext context,
    ValueNotifier<bool> isEditMode,
    CupertinoThemeData rpTheme, // Cupertinoテーマを追加
  ) {
    final Color buttonColor = CupertinoDynamicColor.resolve(
      CupertinoDynamicColor.withBrightness(
        color: rpTheme.primaryColor,
        darkColor: CupertinoColors.black.withOpacity(0.2),
      ),
      context,
    );

    final Color shadowColor = CupertinoDynamicColor.resolve(
      CupertinoDynamicColor.withBrightness(
        color: CupertinoColors.black.withOpacity(0.2),
        darkColor: CupertinoColors.white.withOpacity(0.2),
      ),
      context,
    );

    final Color iconColor = CupertinoDynamicColor.resolve(
      CupertinoDynamicColor.withBrightness(
        color: CupertinoColors.white,
        darkColor: rpTheme.primaryColor,
      ),
      context,
    );

    const double buttonSize = 60;

    return Positioned(
      bottom: 12,
      left: MediaQuery.of(context).size.width * 0.5 - buttonSize / 2,
      child: AnimatedSwitcher(
        duration: const Duration(milliseconds: 300),
        transitionBuilder: (Widget child, Animation<double> animation) {
          return FadeTransition(
            opacity: animation,
            child: ScaleTransition(scale: animation, child: child),
          );
        },
        child: isEditMode.value
            ? const SizedBox.shrink()
            : CupertinoButton(
                key: const ValueKey('addCategoryButton'),
                padding: EdgeInsets.zero,
                onPressed: () => showAddCategorySheet(context),
                child: Container(
                  width: buttonSize,
                  height: buttonSize,
                  decoration: BoxDecoration(
                    color: buttonColor,
                    borderRadius: BorderRadius.circular(28),
                    boxShadow: [
                      BoxShadow(
                        color: shadowColor,
                        blurRadius: 6,
                        spreadRadius: 2,
                      ),
                    ],
                  ),
                  child: Icon(
                    CupertinoIcons.add,
                    size: 28,
                    color: iconColor,
                  ),
                ),
              ),
      ),
    );
  }

  // MARK: - Delete Button
  Widget _buildDeleteButton(
    BuildContext context,
    ValueNotifier<bool> isEditMode,
    ValueNotifier<Set<String>> selectedEditingCategoryIDs,
    RPAppStateNotifier appStateNotifier,
  ) {
    return Positioned(
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
        child: (isEditMode.value && selectedEditingCategoryIDs.value.isNotEmpty)
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
                  child: const Text('選択したカテゴリを削除'),
                  onPressed: () {
                    for (var categoryId in selectedEditingCategoryIDs.value) {
                      appStateNotifier.dispatchCategoryAction(
                        RPTodoCategoryAction.removeCategory(
                            categoryId: categoryId),
                      );
                    }
                    selectedEditingCategoryIDs.value = {};
                  },
                ),
              )
            : const SizedBox.shrink(),
      ),
    );
  }
}
