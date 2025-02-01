/// テーマの種類を管理する
sealed class RPThemeType {
  final String name;

  const RPThemeType._(this.name);

  static const lightGreen = _LightGreenTheme();
  static const lightBlue = _LightBlueTheme();
  static const darkPurple = _DarkPurpleTheme();

  static const values = [lightGreen, lightBlue, darkPurple];

  @override
  String toString() => name;
}

/// **各テーマを定義**
class _LightGreenTheme extends RPThemeType {
  const _LightGreenTheme() : super._('Light Green');
}

class _LightBlueTheme extends RPThemeType {
  const _LightBlueTheme() : super._('Light Blue');
}

class _DarkPurpleTheme extends RPThemeType {
  const _DarkPurpleTheme() : super._('Dark Purple');
}
