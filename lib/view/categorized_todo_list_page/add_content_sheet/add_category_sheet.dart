import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:redux_practice/redux/action/rp_todo_category_action.dart';
import 'package:redux_practice/redux/store/rp_app_state_provider.dart';
import 'package:redux_practice/model/todo/rp_todo_category.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';
import 'package:redux_practice/util/rp_validation_util.dart';
import 'package:uuid/uuid.dart';

void showAddCategorySheet(BuildContext context) {
  final TextEditingController inputController = TextEditingController();
  const uuid = Uuid();

  void showValidationAlert(BuildContext context) {
    showCupertinoDialog(
      context: context,
      builder: (context) => CupertinoAlertDialog(
        title: const Text('エラー'),
        content: const Text('カテゴリ名は1〜10文字で入力してください。'),
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
              padding: const EdgeInsets.only(top: 16, bottom: 16),
              decoration: BoxDecoration(
                color: backgroundColor,
                borderRadius:
                    const BorderRadius.vertical(top: Radius.circular(20)),
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Add Category',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: textColor,
                          ),
                        ),
                        CupertinoButton(
                          padding: EdgeInsets.zero,
                          child: Icon(
                            CupertinoIcons.add_circled,
                            color: iconColor,
                          ),
                          onPressed: () {
                            if (RPValidationUtil.isValidCategoryName(
                                inputController.text)) {
                              ref
                                  .read(rpAppStateProvider.notifier)
                                  .dispatchCategoryAction(
                                    RPTodoCategoryAction.addCategory(
                                      category: RPToDoCategory(
                                        name: inputController.text.trim(),
                                        id: uuid.v4(),
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
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    child: Container(
                      width: double.infinity,
                      padding: const EdgeInsets.symmetric(
                          horizontal: 12, vertical: 8),
                      decoration: BoxDecoration(
                        color: inputFieldColor,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: CupertinoTextField(
                        autofocus: true,
                        controller: inputController,
                        placeholder: 'カテゴリ名を入力',
                        decoration: null,
                        maxLines: 1,
                        keyboardType: TextInputType.text,
                        style: TextStyle(color: textColor),
                        placeholderStyle: TextStyle(
                          color: CupertinoDynamicColor.resolve(
                              CupertinoColors.placeholderText, context),
                        ),
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
