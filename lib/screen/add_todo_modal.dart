import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:redux_practice/redux/store/rp_todos_provider.dart';
import 'package:redux_practice/redux/action/rp_todo_action.dart';
import 'package:redux_practice/model/todo/rp_todo.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';
import 'package:uuid/uuid.dart';

void showAddTodoModal(BuildContext context, String categoryId) {
  final TextEditingController controller = TextEditingController();
  const uuid = Uuid();

  showCupertinoModalBottomSheet(
    context: context,
    builder: (context) => Consumer(
      builder: (context, ref, _) {
        return CupertinoPageScaffold(
          navigationBar: CupertinoNavigationBar(
            middle: const Text('ToDo追加'),
            trailing: CupertinoButton(
              padding: EdgeInsets.zero,
              child: const Text('追加'),
              onPressed: () {
                if (controller.text.isNotEmpty) {
                  ref.read(rpTodosProvider.notifier).dispatch(
                        RPTodoAction.addTodo(
                          categoryId: categoryId,
                          todo: RPToDo(
                            id: uuid.v4(),
                            categoryId: categoryId,
                            title: controller.text,
                          ),
                        ),
                      );
                  Navigator.pop(context);
                }
              },
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: CupertinoTextField(
              controller: controller,
              placeholder: 'ToDo を入力',
            ),
          ),
        );
      },
    ),
  );
}
