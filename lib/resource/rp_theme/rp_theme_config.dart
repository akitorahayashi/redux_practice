import 'package:flutter/cupertino.dart';

/// テーマの構成情報を管理するクラス
class RPThemeConfig {
  final Color primaryColor;
  final Color barBackgroundColor;
  final Color scaffoldBackgroundColor;
  final CupertinoTextThemeData textTheme;

  const RPThemeConfig({
    required this.primaryColor,
    required this.barBackgroundColor,
    required this.scaffoldBackgroundColor,
    required this.textTheme,
  });

  CupertinoThemeData toCupertinoTheme(Brightness brightness) {
    return CupertinoThemeData(
      brightness: brightness,
      primaryColor: primaryColor,
      barBackgroundColor: barBackgroundColor,
      scaffoldBackgroundColor: scaffoldBackgroundColor,
      textTheme: textTheme,
    );
  }
}
