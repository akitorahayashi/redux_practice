import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:redux_practice/redux/store/rp_app_state_provider.dart';
import 'package:redux_practice/screen/add_content_sheet/add_todo_sheet.dart';
import 'todo_list_tile.dart';

class CategorySection extends ConsumerWidget {
  final String categoryId;
  final String categoryName;
  final bool isEditMode;
  final bool isSelected;
  final VoidCallback onEditCheckmarkPressed;

  const CategorySection({
    super.key,
    required this.categoryId,
    required this.categoryName,
    required this.isEditMode,
    required this.isSelected,
    required this.onEditCheckmarkPressed,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final rpTheme = CupertinoTheme.of(context);
    final containerColor =
        CupertinoDynamicColor.resolve(CupertinoColors.systemGrey6, context);
    final selectedColor =
        CupertinoDynamicColor.resolve(CupertinoColors.systemGrey3, context);
    final notSelectedColor =
        CupertinoDynamicColor.resolve(CupertinoColors.systemGrey, context);
    final textColor =
        CupertinoDynamicColor.resolve(CupertinoColors.label, context);
    final plusIconColor = rpTheme.primaryColor;
    final shadowColor =
        CupertinoDynamicColor.resolve(CupertinoColors.systemFill, context)
            .withOpacity(0.2);

    final corrTodos = ref.watch(
        rpAppStateProvider.select((state) => state.todos[categoryId] ?? []));

    final brightness = MediaQuery.of(context).platformBrightness;
    final listTileBackgroundColor = isSelected
        ? selectedColor
        : brightness == Brightness.light
            ? rpTheme.primaryColor
            : containerColor;

    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        AnimatedSwitcher(
          duration: const Duration(milliseconds: 300),
          transitionBuilder: (Widget child, Animation<double> animation) {
            return FadeTransition(
              opacity: animation,
              child: ScaleTransition(scale: animation, child: child),
            );
          },
          child: isEditMode
              ? CupertinoButton(
                  key: ValueKey('checkbox-$categoryId-$isSelected'),
                  padding: EdgeInsets.zero,
                  onPressed: onEditCheckmarkPressed,
                  child: Icon(
                    isSelected
                        ? CupertinoIcons.checkmark_square
                        : CupertinoIcons.square,
                    size: 24,
                    color: isSelected ? rpTheme.primaryColor : notSelectedColor,
                  ),
                )
              : const SizedBox.shrink(),
        ),
        Expanded(
          child: GestureDetector(
            onTap: () {
              if (isEditMode) {
                onEditCheckmarkPressed();
              }
            },
            child: AnimatedContainer(
              duration: const Duration(milliseconds: 300),
              curve: Curves.easeInOut,
              margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 8),
              clipBehavior: Clip.hardEdge,
              decoration: BoxDecoration(
                color: isSelected ? selectedColor : containerColor,
                borderRadius: BorderRadius.circular(12),
                boxShadow: isSelected
                    ? []
                    : [
                        BoxShadow(
                          color: shadowColor,
                          blurRadius: 6,
                          spreadRadius: 1,
                        ),
                      ],
              ),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(12),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          categoryName,
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: textColor),
                        ),
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
                                    child: Icon(
                                      CupertinoIcons.add_circled,
                                      size: 24,
                                      color: plusIconColor,
                                    ),
                                    onPressed: () =>
                                        showAddTodoSheet(context, categoryId),
                                  ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 12.0),
                    child: Column(
                      children: corrTodos
                          .map((todo) => TodoListTile(
                                todo: todo,
                                backgroundColor: listTileBackgroundColor,
                              ))
                          .toList(),
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
