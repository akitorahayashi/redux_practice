import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:redux_practice/redux/store/todo/rp_todos_provider.dart';
import 'package:redux_practice/redux/action/rp_todo_action.dart';
import 'package:redux_practice/model/todo/rp_todo.dart';

import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';
import 'package:redux_practice/util/rp_validation_util.dart';
import 'package:uuid/uuid.dart';

void showAddTodoSheet(BuildContext context, String categoryId) {
  final TextEditingController controller = TextEditingController();
  const uuid = Uuid();

  void showValidationAlert(BuildContext context) {
    showCupertinoDialog(
      context: context,
      builder: (context) => CupertinoAlertDialog(
        title: const Text('入力エラー'),
        content: const Text('ToDoの内容を入力してください。'),
        actions: [
          CupertinoDialogAction(
            child: const Text('OK'),
            onPressed: () => Navigator.pop(context),
          ),
        ],
      ),
    );
  }

  showCupertinoModalBottomSheet(
    context: context,
    expand: false,
    builder: (context) => Consumer(
      builder: (context, ref, _) {
        return Container(
          height: MediaQuery.of(context).size.height * 0.3,
          decoration: const BoxDecoration(
            color: CupertinoColors.systemBackground,
            borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              // ヘッダー
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 16, horizontal: 16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    // Navigationのラベル
                    const Text(
                      'ToDo追加',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    // 追加ボタン
                    CupertinoButton(
                      padding: EdgeInsets.zero,
                      child: const Icon(CupertinoIcons.add_circled),
                      onPressed: () {
                        if (RPValidationUtil.isValidTodoTitle(
                            controller.text)) {
                          ref.read(rpTodosProvider.notifier).dispatch(
                                RPTodoAction.addTodo(
                                  categoryId: categoryId,
                                  todo: RPToDo(
                                    id: uuid.v4(),
                                    categoryId: categoryId,
                                    title: controller.text.trim(),
                                  ),
                                ),
                              );
                          Navigator.pop(context);
                        } else {
                          showValidationAlert(context);
                        }
                      },
                    ),
                  ],
                ),
              ),
              // 入力フィールド
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Container(
                  width: double.infinity,
                  padding:
                      const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                  decoration: BoxDecoration(
                    color: CupertinoColors.secondarySystemBackground,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: CupertinoTextField(
                    controller: controller,
                    decoration: null, // デフォルトのデザインを消す
                    placeholder: 'ToDoを入力',
                    maxLines: null, // 複数行入力可能にする
                    minLines: 1,
                    keyboardType: TextInputType.multiline,
                  ),
                ),
              ),
            ],
          ),
        );
      },
    ),
  );
}
