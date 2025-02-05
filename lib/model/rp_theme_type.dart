import 'package:json_annotation/json_annotation.dart';

part 'generate/rp_theme_type.g.dart';

// $ dart run build_runner build

@JsonEnum(alwaysCreate: true)
enum RPThemeType {
  @JsonValue("lightGreen")
  lightGreen,

  @JsonValue("lightBlue")
  lightBlue,

  @JsonValue("darkPurple")
  darkPurple;
}

// `fromJson` / `toJson` の拡張メソッド
extension RPThemeTypeX on RPThemeType {
  static RPThemeType fromJson(String json) => _$RPThemeTypeEnumMap.entries
      .firstWhere((e) => e.value == json,
          orElse: () => const MapEntry(RPThemeType.lightGreen, 'lightGreen'))
      .key;

  String toJson() => _$RPThemeTypeEnumMap[this]!;
}
