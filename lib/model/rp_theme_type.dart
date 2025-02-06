import 'package:flutter/cupertino.dart';
import 'package:redux_practice/resource/rp_theme/rp_theme_config.dart';
import 'package:json_annotation/json_annotation.dart';

part 'generate/rp_theme_type.g.dart';

// $ dart run build_runner build

@JsonEnum(alwaysCreate: true)
enum RPThemeType {
  @JsonValue("lightGreen")
  lightGreen(
    light: RPThemeConfig(
      primaryColor: CupertinoColors.activeGreen,
      barBackgroundColor: CupertinoColors.systemBackground,
      scaffoldBackgroundColor: CupertinoColors.systemBackground,
      textTheme: CupertinoTextThemeData(
        navTitleTextStyle: TextStyle(
          color: CupertinoColors.label,
          fontSize: 20,
        ),
        textStyle: TextStyle(
          color: CupertinoColors.label,
        ),
      ),
    ),
    dark: RPThemeConfig(
      primaryColor: CupertinoColors.activeGreen,
      barBackgroundColor: CupertinoColors.darkBackgroundGray,
      scaffoldBackgroundColor: CupertinoColors.black,
      textTheme: CupertinoTextThemeData(
        navTitleTextStyle: TextStyle(
          color: CupertinoColors.white,
          fontSize: 20,
        ),
        textStyle: TextStyle(
          color: CupertinoColors.white,
        ),
      ),
    ),
  ),

  @JsonValue("lightBlue")
  lightBlue(
    light: RPThemeConfig(
      primaryColor: CupertinoColors.activeOrange,
      barBackgroundColor: CupertinoColors.systemBackground,
      scaffoldBackgroundColor: CupertinoColors.systemBackground,
      textTheme: CupertinoTextThemeData(
        navTitleTextStyle: TextStyle(
          color: CupertinoColors.label,
          fontSize: 20,
        ),
        textStyle: TextStyle(
          color: CupertinoColors.label,
        ),
      ),
    ),
    dark: RPThemeConfig(
      primaryColor: CupertinoColors.activeOrange,
      barBackgroundColor: CupertinoColors.darkBackgroundGray,
      scaffoldBackgroundColor: CupertinoColors.black,
      textTheme: CupertinoTextThemeData(
        navTitleTextStyle: TextStyle(
          color: CupertinoColors.white,
          fontSize: 20,
        ),
        textStyle: TextStyle(
          color: CupertinoColors.white,
        ),
      ),
    ),
  ),

  @JsonValue("darkPurple")
  darkPurple(
    light: RPThemeConfig(
      primaryColor: CupertinoColors.systemPurple,
      barBackgroundColor: CupertinoColors.systemBackground,
      scaffoldBackgroundColor: CupertinoColors.systemBackground,
      textTheme: CupertinoTextThemeData(
        navTitleTextStyle: TextStyle(
          color: CupertinoColors.label,
          fontSize: 20,
        ),
        textStyle: TextStyle(
          color: CupertinoColors.label,
        ),
      ),
    ),
    dark: RPThemeConfig(
      primaryColor: CupertinoColors.systemPurple,
      barBackgroundColor: CupertinoColors.darkBackgroundGray,
      scaffoldBackgroundColor: CupertinoColors.black,
      textTheme: CupertinoTextThemeData(
        navTitleTextStyle: TextStyle(
          color: CupertinoColors.white,
          fontSize: 20,
        ),
        textStyle: TextStyle(
          color: CupertinoColors.white,
        ),
      ),
    ),
  );

  final RPThemeConfig light;
  final RPThemeConfig dark;

  const RPThemeType({required this.light, required this.dark});

  /// 指定された明るさに応じたテーマを取得
  CupertinoThemeData themeData(Brightness brightness) {
    return (brightness == Brightness.dark ? dark : light)
        .toCupertinoTheme(brightness);
  }

  /// JSON から RPThemeType を取得
  static RPThemeType fromJson(String json) => _$RPThemeTypeEnumMap.entries
      .firstWhere((e) => e.value == json,
          orElse: () => const MapEntry(RPThemeType.lightGreen, 'lightGreen'))
      .key;

  String toJson() => _$RPThemeTypeEnumMap[this]!;
}
