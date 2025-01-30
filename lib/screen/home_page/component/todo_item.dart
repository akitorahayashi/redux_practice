import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:redux_practice/redux/action/rp_todo_action.dart';
import 'package:redux_practice/redux/store/rp_todos_provider.dart';
import 'package:redux_practice/model/todo/rp_todo.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

class TodoItem extends ConsumerWidget {
  final RPToDo todo;

  const TodoItem({super.key, required this.todo});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Slidable(
      key: ValueKey(todo.id),
      endActionPane: ActionPane(
        motion: const ScrollMotion(),
        children: [
          SlidableAction(
            onPressed: (_) {
              ref.read(rpTodosProvider.notifier).dispatch(
                    RPTodoAction.removeTodo(
                      categoryId: todo.categoryId,
                      todoId: todo.id,
                    ),
                  );
            },
            backgroundColor: CupertinoColors.systemRed,
            icon: CupertinoIcons.delete,
            label: '削除',
          ),
        ],
      ),
      child: Builder(
        builder: (context) {
          return GestureDetector(
            onTap: () {
              Slidable.of(context)?.openEndActionPane();
            },
            child: CupertinoListTile(
              title: Text(todo.title),
              trailing: const Icon(CupertinoIcons.ellipsis),
            ),
          );
        },
      ),
    );
  }
}
