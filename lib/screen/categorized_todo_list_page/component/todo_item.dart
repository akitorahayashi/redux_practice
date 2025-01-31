import 'package:flutter/cupertino.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:redux_practice/redux/action/rp_todo_action.dart';
import 'package:redux_practice/redux/store/rp_todos_provider.dart';
import 'package:redux_practice/model/todo/rp_todo.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

class TodoItem extends HookConsumerWidget {
  final RPToDo todo;

  const TodoItem({super.key, required this.todo});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isSlidableOpening = useState(false);

    return Slidable(
      key: ValueKey(todo.id),
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
                      categoryId: todo.categoryId,
                      todoId: todo.id,
                    ),
                  );
            },
          ),
        ],
      ),
      child: CupertinoListTile(
        onTap: () {
          final slidable = Slidable.of(context);

          if (isSlidableOpening.value) {
            slidable?.close();
            isSlidableOpening.value = false;
          } else {
            slidable?.openEndActionPane();
            isSlidableOpening.value = true;
          }
        },
        title: Text(todo.title),
      ),
    );
  }
}
