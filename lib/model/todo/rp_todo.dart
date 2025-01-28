import 'package:freezed_annotation/freezed_annotation.dart';

part '../generate/rp_todo.freezed.dart';
part '../generate/rp_todo.g.dart';

@freezed
class RPToDo with _$RPToDo {
  const factory RPToDo({
    required String id,
    required String title,
    @Default(false) bool isChecked,
  }) = _RPToDo;

  factory RPToDo.fromJson(Map<String, dynamic> json) => _$RPToDoFromJson(json);
}
