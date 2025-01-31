import 'package:flutter/cupertino.dart';
import 'package:redux_practice/screen/categorized_todo_list_page/categorized_todo_list_page.dart';

class ReduxPracticeApp extends StatelessWidget {
  const ReduxPracticeApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const CupertinoApp(
      title: 'Cupertino Demo',
      theme: CupertinoThemeData(
        primaryColor: CupertinoColors.activeGreen,
      ),
      home: CategorizedToDoListPage(),
    );
  }
}
