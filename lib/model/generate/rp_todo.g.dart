// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../todo/rp_todo.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RPToDoImpl _$$RPToDoImplFromJson(Map<String, dynamic> json) => _$RPToDoImpl(
      id: json['id'] as String,
      categoryId: json['categoryId'] as String,
      title: json['title'] as String,
      isChecked: json['isChecked'] as bool? ?? false,
    );

Map<String, dynamic> _$$RPToDoImplToJson(_$RPToDoImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'categoryId': instance.categoryId,
      'title': instance.title,
      'isChecked': instance.isChecked,
    };
