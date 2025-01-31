class RPValidationUtil {
  /// ToDoの内容のチェック
  static bool isValidTodoTitle(String title) {
    return title.trim().isNotEmpty;
  }

  /// カテゴリ名のチェック（10文字以下で空でないこと）
  static bool isValidCategoryName(String name) {
    final isWithInLimit = name.length <= 10;
    final trimmedName = name.trim();
    return isWithInLimit && trimmedName.isNotEmpty;
  }
}
