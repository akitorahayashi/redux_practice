import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:redux_practice/model/rp_theme_type.dart';

part 'generate/rp_theme_action.freezed.dart';

// $ dart run build_runner build

@freezed
class RPThemeAction with _$RPThemeAction {
  const factory RPThemeAction.changeTheme({
    required RPThemeType themeType,
  }) = ChangeThemeAction;
}
