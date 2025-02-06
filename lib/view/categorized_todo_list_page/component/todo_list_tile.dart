import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:redux_practice/redux/action/rp_todo_action.dart';
import 'package:redux_practice/redux/store/rp_app_state_provider.dart';
import 'package:redux_practice/model/todo/rp_todo.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

class TodoListTile extends ConsumerStatefulWidget {
  final RPToDo todo;
  final Color backgroundColor;

  const TodoListTile({
    super.key,
    required this.todo,
    required this.backgroundColor,
  });

  @override
  TodoItemState createState() => TodoItemState();
}

class TodoItemState extends ConsumerState<TodoListTile> {
  bool isOpening = false;

  @override
  Widget build(BuildContext context) {
    final rpTheme = CupertinoTheme.of(context);
    final brightness = MediaQuery.of(context).platformBrightness;
    final textColor =
        CupertinoDynamicColor.resolve(CupertinoColors.label, context);

    final foregroundColor = brightness == Brightness.light
        ? CupertinoColors.systemBackground
        : rpTheme.primaryColor;

    final appStateNotifier = ref.read(rpAppStateProvider.notifier);

    return Slidable(
      key: ValueKey(widget.todo.id),
      endActionPane: ActionPane(
        motion: const ScrollMotion(),
        extentRatio: 0.2,
        children: [
          SlidableAction(
            backgroundColor: widget.backgroundColor,
            icon: CupertinoIcons.checkmark_alt_circle,
            foregroundColor: foregroundColor,
            onPressed: (_) {
              appStateNotifier.dispatchTodoAction(
                RPTodoAction.removeTodo(
                  categoryId: widget.todo.categoryId,
                  todoId: widget.todo.id,
                ),
              );
            },
          ),
        ],
      ),
      child: Builder(
        builder: (context) {
          return CupertinoListTile(
            onTap: () {
              final slidable = Slidable.of(context);

              if (isOpening) {
                slidable?.close();
                setState(() {
                  isOpening = false;
                });
              } else {
                slidable?.openEndActionPane();
                setState(() {
                  isOpening = true;
                });
              }
            },
            title: Text(widget.todo.title, style: TextStyle(color: textColor)),
          );
        },
      ),
    );
  }
}
