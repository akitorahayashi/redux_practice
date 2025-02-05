// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../rp_app_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RPAppStateImpl _$$RPAppStateImplFromJson(Map<String, dynamic> json) =>
    _$RPAppStateImpl(
      todos: (json['todos'] as Map<String, dynamic>?)?.map(
            (k, e) => MapEntry(
                k,
                (e as List<dynamic>)
                    .map((e) => RPToDo.fromJson(e as Map<String, dynamic>))
                    .toList()),
          ) ??
          initialTodos,
      categories: (json['categories'] as List<dynamic>?)
              ?.map((e) => RPToDoCategory.fromJson(e as Map<String, dynamic>))
              .toList() ??
          initialCategories,
      selectedThemeType: $enumDecodeNullable(
              _$RPThemeTypeEnumMap, json['selectedThemeType']) ??
          RPThemeType.lightGreen,
    );

Map<String, dynamic> _$$RPAppStateImplToJson(_$RPAppStateImpl instance) =>
    <String, dynamic>{
      'todos': instance.todos,
      'categories': instance.categories,
      'selectedThemeType': _$RPThemeTypeEnumMap[instance.selectedThemeType]!,
    };

const _$RPThemeTypeEnumMap = {
  RPThemeType.lightGreen: 'lightGreen',
  RPThemeType.lightBlue: 'lightBlue',
  RPThemeType.darkPurple: 'darkPurple',
};
