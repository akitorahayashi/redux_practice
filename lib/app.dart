import 'package:flutter/cupertino.dart';
import 'package:redux_practice/view/home_page.dart';

class ReduxPracticeApp extends StatelessWidget {
  const ReduxPracticeApp({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
      title: 'Cupertino Demo',
      theme: const CupertinoThemeData(
        primaryColor: CupertinoColors.activeBlue,
      ),
      home: const MyHomePage(title: 'Cupertino Demo Home Page'),
    );
  }
}
