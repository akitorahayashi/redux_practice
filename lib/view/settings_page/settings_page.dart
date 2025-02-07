import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:redux_practice/redux/action/rp_theme_action.dart';
import 'package:redux_practice/redux/store/rp_app_state_provider.dart';
import 'package:redux_practice/model/rp_theme_type.dart';

class SettingsPage extends ConsumerWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final rpTheme = CupertinoTheme.of(context);
    final selectedThemeType = ref
        .watch(rpAppStateProvider.select((state) => state.selectedThemeType));

    return CupertinoPageScaffold(
      navigationBar: _buildNavigationBar(context, rpTheme),
      child: SafeArea(
        child: ListView(
          padding: const EdgeInsets.all(16.0),
          children: [
            _buildThemeSelection(context, ref, selectedThemeType),
            const SizedBox(height: 200), // 最下部のスペース
          ],
        ),
      ),
    );
  }

  // MARK: - Navigation Bar
  CupertinoNavigationBar _buildNavigationBar(
    BuildContext context,
    CupertinoThemeData rpTheme,
  ) {
    return CupertinoNavigationBar(
      middle: Text(
        'Settings',
        style: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.w700,
          color: CupertinoDynamicColor.resolve(rpTheme.primaryColor, context),
        ),
      ),
      leading: CupertinoButton(
        padding: EdgeInsets.zero,
        child: const Icon(CupertinoIcons.back, size: 24),
        onPressed: () => Navigator.pop(context),
      ),
    );
  }

  // MARK: - Theme Selection
  Widget _buildThemeSelection(
    BuildContext context,
    WidgetRef ref,
    RPThemeType selectedThemeType,
  ) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          "Theme colors",
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 16),
        _buildColorPalette(context, ref, selectedThemeType),
      ],
    );
  }

  // MARK: - Color Palette
  Widget _buildColorPalette(
    BuildContext context,
    WidgetRef ref,
    RPThemeType selectedThemeType,
  ) {
    final brightness = MediaQuery.of(context).platformBrightness;
    final isDarkMode = brightness == Brightness.dark;
    const themeOptions = RPThemeType.values;

    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: themeOptions.map((themeType) {
        final isSelected = themeType == selectedThemeType;
        return CupertinoButton(
          padding: EdgeInsets.zero,
          onPressed: () {
            ref.read(rpAppStateProvider.notifier).dispatchThemeAction(
                RPThemeAction.changeTheme(themeType: themeType));
          },
          child: AnimatedContainer(
            duration: const Duration(milliseconds: 300),
            curve: Curves.easeInOut,
            width: isSelected ? 45 : 40,
            height: isSelected ? 45 : 40,
            margin: const EdgeInsets.symmetric(horizontal: 8),
            decoration: BoxDecoration(
              color: CupertinoDynamicColor.resolve(
                  themeType.light.primaryColor, context),
              shape: BoxShape.circle,
              border: Border.all(
                color: isSelected
                    ? (isDarkMode
                        ? CupertinoColors.white
                        : CupertinoColors.systemGrey)
                    : (isDarkMode
                        ? CupertinoColors.systemGrey
                        : CupertinoColors.systemGrey3),
                width: isSelected ? 3 : 1.5,
              ),
            ),
          ),
        );
      }).toList(),
    );
  }
}
