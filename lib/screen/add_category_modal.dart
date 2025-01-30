import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:redux_practice/redux/action/rp_todo_category_action.dart';
import 'package:redux_practice/redux/store/rp_categories_provider.dart';
import 'package:redux_practice/model/todo/rp_todo_category.dart';

import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';
import 'package:uuid/uuid.dart';

void showAddCategoryModal(BuildContext context) {
  TextEditingController controller = TextEditingController();
  final uuid = Uuid();

  showCupertinoModalBottomSheet(
    context: context,
    builder: (context) => Consumer(
      builder: (context, ref, _) {
        return CupertinoPageScaffold(
          navigationBar: CupertinoNavigationBar(
            middle: const Text('カテゴリ追加'),
            trailing: CupertinoButton(
              padding: EdgeInsets.zero,
              child: const Text('追加'),
              onPressed: () {
                if (controller.text.isNotEmpty) {
                  ref
                      .read(rpCategoriesProvider.notifier)
                      .dispatch(RPTodoCategoryAction.addCategory(
                          category: RPToDoCategory(
                        name: controller.text,
                        id: uuid.v4(),
                      )));
                  Navigator.pop(context);
                }
              },
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: CupertinoTextField(
              controller: controller,
              placeholder: 'カテゴリ名を入力',
            ),
          ),
        );
      },
    ),
  );
}
