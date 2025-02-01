import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:redux_practice/resource/design/rp_app_theme.dart';
import 'package:redux_practice/resource/design/rp_theme_type.dart';

final themeProvider =
    StateProvider<RPThemeType>((ref) => RPAppTheme.defaultTheme);
