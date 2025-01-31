import 'package:flutter_riverpod/flutter_riverpod.dart';

final editModeProvider = StateProvider<bool>((ref) => false);

final selectedCategoriesProvider = StateProvider<Set<String>>((ref) => {});
