import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:redux_practice/redux/store/rp_categories_provider.dart';
import 'package:redux_practice/screen/categorized_todo_list_page/add_content_sheet/add_category_sheet.dart';
import 'package:redux_practice/screen/categorized_todo_list_page/component/category_section.dart';

class CategorizedToDoListPage extends ConsumerWidget {
  const CategorizedToDoListPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final categories = ref.watch(rpCategoriesProvider);

    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        middle: const Text('ToDoリスト'),
        trailing: CupertinoButton(
          padding: EdgeInsets.zero,
          child: const Icon(CupertinoIcons.add, size: 28),
          onPressed: () => showAddCategorySheet(context),
        ),
      ),
      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListView.separated(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            itemCount: categories.length + 1, // スペーサー分 +1
            separatorBuilder: (_, __) =>
                const SizedBox(height: 8), // 各カテゴリの間に余白
            itemBuilder: (context, index) {
              if (index == categories.length) {
                return const SizedBox(height: 200); // 最後にスペースを追加
              }
              final category = categories[index];
              return CategorySection(
                categoryId: category.id,
                categoryName: category.name,
              );
            },
          ),
        ),
      ),
    );
  }
}
