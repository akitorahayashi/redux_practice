// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '../todo/rp_todo_category.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

RPToDoCategory _$RPToDoCategoryFromJson(Map<String, dynamic> json) {
  return _RPToDoCategory.fromJson(json);
}

/// @nodoc
mixin _$RPToDoCategory {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;

  /// Serializes this RPToDoCategory to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of RPToDoCategory
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RPToDoCategoryCopyWith<RPToDoCategory> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RPToDoCategoryCopyWith<$Res> {
  factory $RPToDoCategoryCopyWith(
          RPToDoCategory value, $Res Function(RPToDoCategory) then) =
      _$RPToDoCategoryCopyWithImpl<$Res, RPToDoCategory>;
  @useResult
  $Res call({String id, String name});
}

/// @nodoc
class _$RPToDoCategoryCopyWithImpl<$Res, $Val extends RPToDoCategory>
    implements $RPToDoCategoryCopyWith<$Res> {
  _$RPToDoCategoryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RPToDoCategory
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RPToDoCategoryImplCopyWith<$Res>
    implements $RPToDoCategoryCopyWith<$Res> {
  factory _$$RPToDoCategoryImplCopyWith(_$RPToDoCategoryImpl value,
          $Res Function(_$RPToDoCategoryImpl) then) =
      __$$RPToDoCategoryImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String name});
}

/// @nodoc
class __$$RPToDoCategoryImplCopyWithImpl<$Res>
    extends _$RPToDoCategoryCopyWithImpl<$Res, _$RPToDoCategoryImpl>
    implements _$$RPToDoCategoryImplCopyWith<$Res> {
  __$$RPToDoCategoryImplCopyWithImpl(
      _$RPToDoCategoryImpl _value, $Res Function(_$RPToDoCategoryImpl) _then)
      : super(_value, _then);

  /// Create a copy of RPToDoCategory
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
  }) {
    return _then(_$RPToDoCategoryImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RPToDoCategoryImpl implements _RPToDoCategory {
  const _$RPToDoCategoryImpl({required this.id, required this.name});

  factory _$RPToDoCategoryImpl.fromJson(Map<String, dynamic> json) =>
      _$$RPToDoCategoryImplFromJson(json);

  @override
  final String id;
  @override
  final String name;

  @override
  String toString() {
    return 'RPToDoCategory(id: $id, name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RPToDoCategoryImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name);

  /// Create a copy of RPToDoCategory
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RPToDoCategoryImplCopyWith<_$RPToDoCategoryImpl> get copyWith =>
      __$$RPToDoCategoryImplCopyWithImpl<_$RPToDoCategoryImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RPToDoCategoryImplToJson(
      this,
    );
  }
}

abstract class _RPToDoCategory implements RPToDoCategory {
  const factory _RPToDoCategory(
      {required final String id,
      required final String name}) = _$RPToDoCategoryImpl;

  factory _RPToDoCategory.fromJson(Map<String, dynamic> json) =
      _$RPToDoCategoryImpl.fromJson;

  @override
  String get id;
  @override
  String get name;

  /// Create a copy of RPToDoCategory
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RPToDoCategoryImplCopyWith<_$RPToDoCategoryImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
