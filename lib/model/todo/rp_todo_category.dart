import 'package:freezed_annotation/freezed_annotation.dart';

part '../generate/rp_todo_category.freezed.dart';
part '../generate/rp_todo_category.g.dart';

@freezed
class RPToDoCategory with _$RPToDoCategory {
  const factory RPToDoCategory({
    required String id,
    required String name,
  }) = _RPToDoCategory;

  factory RPToDoCategory.fromJson(Map<String, dynamic> json) =>
      _$RPToDoCategoryFromJson(json);
}
