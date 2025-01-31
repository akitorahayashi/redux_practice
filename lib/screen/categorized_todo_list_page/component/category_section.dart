import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:redux_practice/redux/store/rp_todos_provider.dart';
import 'package:redux_practice/screen/categorized_todo_list_page/add_content_sheet/add_todo_sheet.dart';
import 'todo_item.dart';

class CategorySection extends ConsumerWidget {
  final String categoryId;
  final String categoryName;

  const CategorySection({
    super.key,
    required this.categoryId,
    required this.categoryName,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final todos = ref.watch(rpTodosProvider)[categoryId] ?? [];

    return Container(
      margin: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: CupertinoColors.systemGrey6,
        borderRadius: BorderRadius.circular(12),
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
                  style: const TextStyle(
                      fontSize: 18, fontWeight: FontWeight.bold),
                ),
                CupertinoButton(
                  padding: EdgeInsets.zero,
                  child: const Icon(CupertinoIcons.add_circled, size: 24),
                  onPressed: () => showAddTodoSheet(context, categoryId),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 12.0),
            child: Column(children: [
              ...todos.map((todo) => TodoItem(todo: todo)),
            ]),
          )
        ],
      ),
    );
  }
}
