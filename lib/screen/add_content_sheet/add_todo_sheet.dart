import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:redux_practice/redux/store/rp_app_state_provider.dart';
import 'package:redux_practice/redux/action/rp_todo_action.dart';
import 'package:redux_practice/model/todo/rp_todo.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';
import 'package:redux_practice/util/rp_validation_util.dart';
import 'package:uuid/uuid.dart';

void showAddTodoSheet(BuildContext context, String categoryId) {
  final TextEditingController inputController = TextEditingController();
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
        // color
        final rpTheme = CupertinoTheme.of(context);
        final backgroundColor = CupertinoDynamicColor.resolve(
            CupertinoColors.systemBackground, context);
        final inputFieldColor = CupertinoDynamicColor.resolve(
            CupertinoColors.secondarySystemBackground, context);
        final textColor =
            CupertinoDynamicColor.resolve(CupertinoColors.label, context);
        final iconColor = rpTheme.primaryColor;

        return Padding(
          padding: EdgeInsets.only(
            bottom: MediaQuery.of(context).viewInsets.bottom + 30,
          ),
          child: SingleChildScrollView(
            child: Container(
              padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 16),
              decoration: BoxDecoration(
                color: backgroundColor,
                borderRadius:
                    const BorderRadius.vertical(top: Radius.circular(20)),
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Add ToDo',
                        // TODO
                        //  fontSize: 18,
                        //  fontWeight: FontWeight.bold,
                        style: rpTheme.textTheme.navTitleTextStyle,
                      ),
                      CupertinoButton(
                        padding: EdgeInsets.zero,
                        child: Icon(
                          CupertinoIcons.add_circled,
                          color: iconColor,
                        ),
                        onPressed: () {
                          if (RPValidationUtil.isValidTodoTitle(
                              inputController.text)) {
                            ref
                                .read(rpAppStateProvider.notifier)
                                .dispatchTodoAction(
                                  RPTodoAction.addTodo(
                                    categoryId: categoryId,
                                    todo: RPToDo(
                                      id: uuid.v4(),
                                      categoryId: categoryId,
                                      title: inputController.text.trim(),
                                    ),
                                  ),
                                );
                            inputController.clear();
                          } else {
                            showValidationAlert(context);
                          }
                        },
                      ),
                    ],
                  ),
                  Container(
                    width: double.infinity,
                    padding:
                        const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                    decoration: BoxDecoration(
                      color: inputFieldColor,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: CupertinoTextField(
                      controller: inputController,
                      decoration: null,
                      placeholder: 'ToDoを入力',
                      maxLines: null,
                      minLines: 1,
                      keyboardType: TextInputType.multiline,
                      style: TextStyle(color: textColor),
                      placeholderStyle: TextStyle(
                        color: CupertinoDynamicColor.resolve(
                            CupertinoColors.placeholderText, context),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    ),
  );
}
