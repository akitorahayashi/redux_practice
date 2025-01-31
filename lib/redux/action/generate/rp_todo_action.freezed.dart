// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '../rp_todo_action.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$RPTodoAction {
  String get categoryId => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String categoryId, RPToDo todo) addTodo,
    required TResult Function(String categoryId, String todoId) removeTodo,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String categoryId, RPToDo todo)? addTodo,
    TResult? Function(String categoryId, String todoId)? removeTodo,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String categoryId, RPToDo todo)? addTodo,
    TResult Function(String categoryId, String todoId)? removeTodo,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AddTodoAction value) addTodo,
    required TResult Function(RemoveTodoAction value) removeTodo,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AddTodoAction value)? addTodo,
    TResult? Function(RemoveTodoAction value)? removeTodo,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AddTodoAction value)? addTodo,
    TResult Function(RemoveTodoAction value)? removeTodo,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Create a copy of RPTodoAction
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RPTodoActionCopyWith<RPTodoAction> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RPTodoActionCopyWith<$Res> {
  factory $RPTodoActionCopyWith(
          RPTodoAction value, $Res Function(RPTodoAction) then) =
      _$RPTodoActionCopyWithImpl<$Res, RPTodoAction>;
  @useResult
  $Res call({String categoryId});
}

/// @nodoc
class _$RPTodoActionCopyWithImpl<$Res, $Val extends RPTodoAction>
    implements $RPTodoActionCopyWith<$Res> {
  _$RPTodoActionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RPTodoAction
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? categoryId = null,
  }) {
    return _then(_value.copyWith(
      categoryId: null == categoryId
          ? _value.categoryId
          : categoryId // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AddTodoActionImplCopyWith<$Res>
    implements $RPTodoActionCopyWith<$Res> {
  factory _$$AddTodoActionImplCopyWith(
          _$AddTodoActionImpl value, $Res Function(_$AddTodoActionImpl) then) =
      __$$AddTodoActionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String categoryId, RPToDo todo});

  $RPToDoCopyWith<$Res> get todo;
}

/// @nodoc
class __$$AddTodoActionImplCopyWithImpl<$Res>
    extends _$RPTodoActionCopyWithImpl<$Res, _$AddTodoActionImpl>
    implements _$$AddTodoActionImplCopyWith<$Res> {
  __$$AddTodoActionImplCopyWithImpl(
      _$AddTodoActionImpl _value, $Res Function(_$AddTodoActionImpl) _then)
      : super(_value, _then);

  /// Create a copy of RPTodoAction
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? categoryId = null,
    Object? todo = null,
  }) {
    return _then(_$AddTodoActionImpl(
      categoryId: null == categoryId
          ? _value.categoryId
          : categoryId // ignore: cast_nullable_to_non_nullable
              as String,
      todo: null == todo
          ? _value.todo
          : todo // ignore: cast_nullable_to_non_nullable
              as RPToDo,
    ));
  }

  /// Create a copy of RPTodoAction
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $RPToDoCopyWith<$Res> get todo {
    return $RPToDoCopyWith<$Res>(_value.todo, (value) {
      return _then(_value.copyWith(todo: value));
    });
  }
}

/// @nodoc

class _$AddTodoActionImpl implements AddTodoAction {
  const _$AddTodoActionImpl({required this.categoryId, required this.todo});

  @override
  final String categoryId;
  @override
  final RPToDo todo;

  @override
  String toString() {
    return 'RPTodoAction.addTodo(categoryId: $categoryId, todo: $todo)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddTodoActionImpl &&
            (identical(other.categoryId, categoryId) ||
                other.categoryId == categoryId) &&
            (identical(other.todo, todo) || other.todo == todo));
  }

  @override
  int get hashCode => Object.hash(runtimeType, categoryId, todo);

  /// Create a copy of RPTodoAction
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AddTodoActionImplCopyWith<_$AddTodoActionImpl> get copyWith =>
      __$$AddTodoActionImplCopyWithImpl<_$AddTodoActionImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String categoryId, RPToDo todo) addTodo,
    required TResult Function(String categoryId, String todoId) removeTodo,
  }) {
    return addTodo(categoryId, todo);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String categoryId, RPToDo todo)? addTodo,
    TResult? Function(String categoryId, String todoId)? removeTodo,
  }) {
    return addTodo?.call(categoryId, todo);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String categoryId, RPToDo todo)? addTodo,
    TResult Function(String categoryId, String todoId)? removeTodo,
    required TResult orElse(),
  }) {
    if (addTodo != null) {
      return addTodo(categoryId, todo);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AddTodoAction value) addTodo,
    required TResult Function(RemoveTodoAction value) removeTodo,
  }) {
    return addTodo(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AddTodoAction value)? addTodo,
    TResult? Function(RemoveTodoAction value)? removeTodo,
  }) {
    return addTodo?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AddTodoAction value)? addTodo,
    TResult Function(RemoveTodoAction value)? removeTodo,
    required TResult orElse(),
  }) {
    if (addTodo != null) {
      return addTodo(this);
    }
    return orElse();
  }
}

abstract class AddTodoAction implements RPTodoAction {
  const factory AddTodoAction(
      {required final String categoryId,
      required final RPToDo todo}) = _$AddTodoActionImpl;

  @override
  String get categoryId;
  RPToDo get todo;

  /// Create a copy of RPTodoAction
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AddTodoActionImplCopyWith<_$AddTodoActionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RemoveTodoActionImplCopyWith<$Res>
    implements $RPTodoActionCopyWith<$Res> {
  factory _$$RemoveTodoActionImplCopyWith(_$RemoveTodoActionImpl value,
          $Res Function(_$RemoveTodoActionImpl) then) =
      __$$RemoveTodoActionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String categoryId, String todoId});
}

/// @nodoc
class __$$RemoveTodoActionImplCopyWithImpl<$Res>
    extends _$RPTodoActionCopyWithImpl<$Res, _$RemoveTodoActionImpl>
    implements _$$RemoveTodoActionImplCopyWith<$Res> {
  __$$RemoveTodoActionImplCopyWithImpl(_$RemoveTodoActionImpl _value,
      $Res Function(_$RemoveTodoActionImpl) _then)
      : super(_value, _then);

  /// Create a copy of RPTodoAction
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? categoryId = null,
    Object? todoId = null,
  }) {
    return _then(_$RemoveTodoActionImpl(
      categoryId: null == categoryId
          ? _value.categoryId
          : categoryId // ignore: cast_nullable_to_non_nullable
              as String,
      todoId: null == todoId
          ? _value.todoId
          : todoId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$RemoveTodoActionImpl implements RemoveTodoAction {
  const _$RemoveTodoActionImpl(
      {required this.categoryId, required this.todoId});

  @override
  final String categoryId;
  @override
  final String todoId;

  @override
  String toString() {
    return 'RPTodoAction.removeTodo(categoryId: $categoryId, todoId: $todoId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RemoveTodoActionImpl &&
            (identical(other.categoryId, categoryId) ||
                other.categoryId == categoryId) &&
            (identical(other.todoId, todoId) || other.todoId == todoId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, categoryId, todoId);

  /// Create a copy of RPTodoAction
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RemoveTodoActionImplCopyWith<_$RemoveTodoActionImpl> get copyWith =>
      __$$RemoveTodoActionImplCopyWithImpl<_$RemoveTodoActionImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String categoryId, RPToDo todo) addTodo,
    required TResult Function(String categoryId, String todoId) removeTodo,
  }) {
    return removeTodo(categoryId, todoId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String categoryId, RPToDo todo)? addTodo,
    TResult? Function(String categoryId, String todoId)? removeTodo,
  }) {
    return removeTodo?.call(categoryId, todoId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String categoryId, RPToDo todo)? addTodo,
    TResult Function(String categoryId, String todoId)? removeTodo,
    required TResult orElse(),
  }) {
    if (removeTodo != null) {
      return removeTodo(categoryId, todoId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AddTodoAction value) addTodo,
    required TResult Function(RemoveTodoAction value) removeTodo,
  }) {
    return removeTodo(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AddTodoAction value)? addTodo,
    TResult? Function(RemoveTodoAction value)? removeTodo,
  }) {
    return removeTodo?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AddTodoAction value)? addTodo,
    TResult Function(RemoveTodoAction value)? removeTodo,
    required TResult orElse(),
  }) {
    if (removeTodo != null) {
      return removeTodo(this);
    }
    return orElse();
  }
}

abstract class RemoveTodoAction implements RPTodoAction {
  const factory RemoveTodoAction(
      {required final String categoryId,
      required final String todoId}) = _$RemoveTodoActionImpl;

  @override
  String get categoryId;
  String get todoId;

  /// Create a copy of RPTodoAction
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RemoveTodoActionImplCopyWith<_$RemoveTodoActionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
