// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '../rp_app_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

RPAppState _$RPAppStateFromJson(Map<String, dynamic> json) {
  return _RPAppState.fromJson(json);
}

/// @nodoc
mixin _$RPAppState {
  Map<String, List<RPToDo>> get todos => throw _privateConstructorUsedError;
  List<RPToDoCategory> get categories => throw _privateConstructorUsedError;

  /// Serializes this RPAppState to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of RPAppState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RPAppStateCopyWith<RPAppState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RPAppStateCopyWith<$Res> {
  factory $RPAppStateCopyWith(
          RPAppState value, $Res Function(RPAppState) then) =
      _$RPAppStateCopyWithImpl<$Res, RPAppState>;
  @useResult
  $Res call({Map<String, List<RPToDo>> todos, List<RPToDoCategory> categories});
}

/// @nodoc
class _$RPAppStateCopyWithImpl<$Res, $Val extends RPAppState>
    implements $RPAppStateCopyWith<$Res> {
  _$RPAppStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RPAppState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? todos = null,
    Object? categories = null,
  }) {
    return _then(_value.copyWith(
      todos: null == todos
          ? _value.todos
          : todos // ignore: cast_nullable_to_non_nullable
              as Map<String, List<RPToDo>>,
      categories: null == categories
          ? _value.categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<RPToDoCategory>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RPAppStateImplCopyWith<$Res>
    implements $RPAppStateCopyWith<$Res> {
  factory _$$RPAppStateImplCopyWith(
          _$RPAppStateImpl value, $Res Function(_$RPAppStateImpl) then) =
      __$$RPAppStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Map<String, List<RPToDo>> todos, List<RPToDoCategory> categories});
}

/// @nodoc
class __$$RPAppStateImplCopyWithImpl<$Res>
    extends _$RPAppStateCopyWithImpl<$Res, _$RPAppStateImpl>
    implements _$$RPAppStateImplCopyWith<$Res> {
  __$$RPAppStateImplCopyWithImpl(
      _$RPAppStateImpl _value, $Res Function(_$RPAppStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of RPAppState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? todos = null,
    Object? categories = null,
  }) {
    return _then(_$RPAppStateImpl(
      todos: null == todos
          ? _value._todos
          : todos // ignore: cast_nullable_to_non_nullable
              as Map<String, List<RPToDo>>,
      categories: null == categories
          ? _value._categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<RPToDoCategory>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RPAppStateImpl implements _RPAppState {
  const _$RPAppStateImpl(
      {final Map<String, List<RPToDo>> todos = initialTodos,
      final List<RPToDoCategory> categories = initialCategories})
      : _todos = todos,
        _categories = categories;

  factory _$RPAppStateImpl.fromJson(Map<String, dynamic> json) =>
      _$$RPAppStateImplFromJson(json);

  final Map<String, List<RPToDo>> _todos;
  @override
  @JsonKey()
  Map<String, List<RPToDo>> get todos {
    if (_todos is EqualUnmodifiableMapView) return _todos;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_todos);
  }

  final List<RPToDoCategory> _categories;
  @override
  @JsonKey()
  List<RPToDoCategory> get categories {
    if (_categories is EqualUnmodifiableListView) return _categories;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_categories);
  }

  @override
  String toString() {
    return 'RPAppState(todos: $todos, categories: $categories)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RPAppStateImpl &&
            const DeepCollectionEquality().equals(other._todos, _todos) &&
            const DeepCollectionEquality()
                .equals(other._categories, _categories));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_todos),
      const DeepCollectionEquality().hash(_categories));

  /// Create a copy of RPAppState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RPAppStateImplCopyWith<_$RPAppStateImpl> get copyWith =>
      __$$RPAppStateImplCopyWithImpl<_$RPAppStateImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RPAppStateImplToJson(
      this,
    );
  }
}

abstract class _RPAppState implements RPAppState {
  const factory _RPAppState(
      {final Map<String, List<RPToDo>> todos,
      final List<RPToDoCategory> categories}) = _$RPAppStateImpl;

  factory _RPAppState.fromJson(Map<String, dynamic> json) =
      _$RPAppStateImpl.fromJson;

  @override
  Map<String, List<RPToDo>> get todos;
  @override
  List<RPToDoCategory> get categories;

  /// Create a copy of RPAppState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RPAppStateImplCopyWith<_$RPAppStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
