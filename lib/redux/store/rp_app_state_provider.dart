import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:redux_practice/model/rp_app_state.dart';
import 'package:redux_practice/redux/reducer/app_state/rp_app_state_notifier.dart';

final rpAppStateProvider =
    StateNotifierProvider<RPAppStateNotifier, RPAppState>((ref) {
  return RPAppStateNotifier();
});
