import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:redux_practice/redux/store/rp_app_state_provider.dart';
import 'package:redux_practice/view/categorized_todo_list_page/categorized_todo_list_page.dart';

class ReduxPracticeApp extends ConsumerWidget {
  const ReduxPracticeApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final themeType = ref
        .watch(rpAppStateProvider.select((state) => state.selectedThemeType));
    final brightness = MediaQuery.of(context).platformBrightness;

    return CupertinoApp(
      title: 'Redux Practice',
      home: const CategorizedToDoListPage(),
      builder: (context, child) {
        return CupertinoTheme(
          data: themeType.themeData(brightness), // ここで直接アクセス
          child: child!,
        );
      },
    );
  }
}
