import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:redux_practice/redux/action/rp_todo_action.dart';
import 'package:redux_practice/redux/store/rp_todos_provider.dart';
import 'package:redux_practice/model/todo/rp_todo.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

class TodoItem extends ConsumerStatefulWidget {
  final RPToDo todo;

  const TodoItem({super.key, required this.todo});

  @override
  TodoItemState createState() => TodoItemState();
}

class TodoItemState extends ConsumerState<TodoItem> {
  bool isOpening = false; // スライドが開いているかの状態を管理

  @override
  Widget build(BuildContext context) {
    return Slidable(
      key: ValueKey(widget.todo.id),
      endActionPane: ActionPane(
        motion: const ScrollMotion(),
        extentRatio: 0.2,
        children: [
          SlidableAction(
            backgroundColor: CupertinoColors.activeGreen,
            icon: CupertinoIcons.checkmark_alt_circle,
            foregroundColor: CupertinoColors.white,
            onPressed: (_) {
              ref.read(rpTodosProvider.notifier).dispatch(
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
            title: Text(widget.todo.title),
          );
        },
      ),
    );
  }
}
