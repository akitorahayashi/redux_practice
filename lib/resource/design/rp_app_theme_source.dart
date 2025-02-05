import 'package:flutter/cupertino.dart';
import 'package:redux_practice/model/rp_theme_type.dart';

/// テーマデータを一元管理するクラス
class RPAppTheme {
  /// テーマの定義 (Light Mode)
  static final Map<RPThemeType, CupertinoThemeData> _lightThemes = {
    RPThemeType.lightGreen:
        _generateTheme(CupertinoColors.activeGreen, Brightness.light),
    RPThemeType.lightBlue:
        _generateTheme(CupertinoColors.systemBlue, Brightness.light),
    RPThemeType.darkPurple:
        _generateTheme(CupertinoColors.systemPurple, Brightness.light),
  };

  /// テーマの定義 (Dark Mode)
  static final Map<RPThemeType, CupertinoThemeData> _darkThemes = {
    RPThemeType.lightGreen:
        _generateTheme(CupertinoColors.activeGreen, Brightness.dark),
    RPThemeType.lightBlue:
        _generateTheme(CupertinoColors.systemBlue, Brightness.dark),
    RPThemeType.darkPurple:
        _generateTheme(CupertinoColors.systemPurple, Brightness.dark),
  };

  /// 指定したテーマを取得
  static CupertinoThemeData getTheme(RPThemeType type, {bool isDark = false}) {
    return isDark ? _darkThemes[type]! : _lightThemes[type]!;
  }

  /// 共通のテーマデザインを生成
  static CupertinoThemeData _generateTheme(
      Color primary, Brightness brightness) {
    return CupertinoThemeData(
      brightness: brightness,
      primaryColor: primary,
      barBackgroundColor: CupertinoColors.systemBackground,
      scaffoldBackgroundColor: CupertinoColors.systemBackground,
      textTheme: const CupertinoTextThemeData(
        navTitleTextStyle: TextStyle(
          color: CupertinoColors.label,
          fontSize: 20,
        ),
        textStyle: TextStyle(
          color: CupertinoColors.label,
        ),
      ),
    );
  }
}
