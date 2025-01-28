// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '../todo/rp_todo.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

RPToDo _$RPToDoFromJson(Map<String, dynamic> json) {
  return _RPToDo.fromJson(json);
}

/// @nodoc
mixin _$RPToDo {
  String get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  bool get isChecked => throw _privateConstructorUsedError;

  /// Serializes this RPToDo to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of RPToDo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RPToDoCopyWith<RPToDo> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RPToDoCopyWith<$Res> {
  factory $RPToDoCopyWith(RPToDo value, $Res Function(RPToDo) then) =
      _$RPToDoCopyWithImpl<$Res, RPToDo>;
  @useResult
  $Res call({String id, String title, bool isChecked});
}

/// @nodoc
class _$RPToDoCopyWithImpl<$Res, $Val extends RPToDo>
    implements $RPToDoCopyWith<$Res> {
  _$RPToDoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RPToDo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? isChecked = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      isChecked: null == isChecked
          ? _value.isChecked
          : isChecked // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RPToDoImplCopyWith<$Res> implements $RPToDoCopyWith<$Res> {
  factory _$$RPToDoImplCopyWith(
          _$RPToDoImpl value, $Res Function(_$RPToDoImpl) then) =
      __$$RPToDoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String title, bool isChecked});
}

/// @nodoc
class __$$RPToDoImplCopyWithImpl<$Res>
    extends _$RPToDoCopyWithImpl<$Res, _$RPToDoImpl>
    implements _$$RPToDoImplCopyWith<$Res> {
  __$$RPToDoImplCopyWithImpl(
      _$RPToDoImpl _value, $Res Function(_$RPToDoImpl) _then)
      : super(_value, _then);

  /// Create a copy of RPToDo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? isChecked = null,
  }) {
    return _then(_$RPToDoImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      isChecked: null == isChecked
          ? _value.isChecked
          : isChecked // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RPToDoImpl implements _RPToDo {
  const _$RPToDoImpl(
      {required this.id, required this.title, this.isChecked = false});

  factory _$RPToDoImpl.fromJson(Map<String, dynamic> json) =>
      _$$RPToDoImplFromJson(json);

  @override
  final String id;
  @override
  final String title;
  @override
  @JsonKey()
  final bool isChecked;

  @override
  String toString() {
    return 'RPToDo(id: $id, title: $title, isChecked: $isChecked)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RPToDoImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.isChecked, isChecked) ||
                other.isChecked == isChecked));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, title, isChecked);

  /// Create a copy of RPToDo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RPToDoImplCopyWith<_$RPToDoImpl> get copyWith =>
      __$$RPToDoImplCopyWithImpl<_$RPToDoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RPToDoImplToJson(
      this,
    );
  }
}

abstract class _RPToDo implements RPToDo {
  const factory _RPToDo(
      {required final String id,
      required final String title,
      final bool isChecked}) = _$RPToDoImpl;

  factory _RPToDo.fromJson(Map<String, dynamic> json) = _$RPToDoImpl.fromJson;

  @override
  String get id;
  @override
  String get title;
  @override
  bool get isChecked;

  /// Create a copy of RPToDo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RPToDoImplCopyWith<_$RPToDoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
