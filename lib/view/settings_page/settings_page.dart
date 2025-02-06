import 'package:flutter/cupertino.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    final rpTheme = CupertinoTheme.of(context);
    return CupertinoPageScaffold(
      navigationBar: _buildNavigationBar(context, rpTheme),
      child: const Center(
        child: Text('Setting Page'),
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
        onPressed: () => Navigator.pop(context), // 戻るボタンの動作
      ),
    );
  }
}
