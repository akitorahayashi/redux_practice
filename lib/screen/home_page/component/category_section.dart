import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:redux_practice/redux/store/rp_todos_provider.dart';
import 'package:redux_practice/screen/add_todo_modal.dart';
import 'todo_item.dart';

class CategorySection extends ConsumerWidget {
  final String categoryId;
  final String categoryName;

  const CategorySection(
      {Key? key, required this.categoryId, required this.categoryName})
      : super(key: key);

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
                  onPressed: () => showAddTodoModal(context, categoryId),
                ),
              ],
            ),
          ),
          ...todos.map((todo) => TodoItem(todo: todo)).toList(),
        ],
      ),
    );
  }
}
