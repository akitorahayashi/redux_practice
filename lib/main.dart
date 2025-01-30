import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:redux_practice/app.dart';

void main() {
  runApp(const ProviderScope(
    child: ReduxPracticeApp(),
  ));
}
