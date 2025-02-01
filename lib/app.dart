import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:redux_practice/redux/store/design/theme_provider.dart';
import 'package:redux_practice/resource/design/rp_app_theme.dart';
import 'package:redux_practice/screen/categorized_todo_list_page/categorized_todo_list_page.dart';

class ReduxPracticeApp extends ConsumerWidget {
  const ReduxPracticeApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final themeType = ref.watch(themeProvider);
    final brightness = MediaQuery.of(context).platformBrightness;

    return CupertinoApp(
      title: 'Cupertino Demo',
      home: const CategorizedToDoListPage(),
      builder: (context, child) {
        return CupertinoTheme(
          data: RPAppTheme.getTheme(themeType,
              isDark: brightness == Brightness.dark),
          child: child!,
        );
      },
    );
  }
}
