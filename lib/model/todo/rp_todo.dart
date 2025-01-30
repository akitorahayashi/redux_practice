import 'package:freezed_annotation/freezed_annotation.dart';

part '../generate/rp_todo.freezed.dart';
part '../generate/rp_todo.g.dart';

// flutter pub run build_runner build

@freezed
class RPToDo with _$RPToDo {
  const factory RPToDo({
    required String id,
    required String categoryId,
    required String title,
  }) = _RPToDo;

  factory RPToDo.fromJson(Map<String, dynamic> json) => _$RPToDoFromJson(json);
}
