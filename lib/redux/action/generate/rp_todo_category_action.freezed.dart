// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '../rp_todo_category_action.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$RPTodoCategoryAction {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(RPToDoCategory category) addCategory,
    required TResult Function(String categoryId) removeCategory,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(RPToDoCategory category)? addCategory,
    TResult? Function(String categoryId)? removeCategory,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(RPToDoCategory category)? addCategory,
    TResult Function(String categoryId)? removeCategory,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AddCategoryAction value) addCategory,
    required TResult Function(RemoveCategoryAction value) removeCategory,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AddCategoryAction value)? addCategory,
    TResult? Function(RemoveCategoryAction value)? removeCategory,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AddCategoryAction value)? addCategory,
    TResult Function(RemoveCategoryAction value)? removeCategory,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RPTodoCategoryActionCopyWith<$Res> {
  factory $RPTodoCategoryActionCopyWith(RPTodoCategoryAction value,
          $Res Function(RPTodoCategoryAction) then) =
      _$RPTodoCategoryActionCopyWithImpl<$Res, RPTodoCategoryAction>;
}

/// @nodoc
class _$RPTodoCategoryActionCopyWithImpl<$Res,
        $Val extends RPTodoCategoryAction>
    implements $RPTodoCategoryActionCopyWith<$Res> {
  _$RPTodoCategoryActionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RPTodoCategoryAction
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$AddCategoryActionImplCopyWith<$Res> {
  factory _$$AddCategoryActionImplCopyWith(_$AddCategoryActionImpl value,
          $Res Function(_$AddCategoryActionImpl) then) =
      __$$AddCategoryActionImplCopyWithImpl<$Res>;
  @useResult
  $Res call({RPToDoCategory category});

  $RPToDoCategoryCopyWith<$Res> get category;
}

/// @nodoc
class __$$AddCategoryActionImplCopyWithImpl<$Res>
    extends _$RPTodoCategoryActionCopyWithImpl<$Res, _$AddCategoryActionImpl>
    implements _$$AddCategoryActionImplCopyWith<$Res> {
  __$$AddCategoryActionImplCopyWithImpl(_$AddCategoryActionImpl _value,
      $Res Function(_$AddCategoryActionImpl) _then)
      : super(_value, _then);

  /// Create a copy of RPTodoCategoryAction
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? category = null,
  }) {
    return _then(_$AddCategoryActionImpl(
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as RPToDoCategory,
    ));
  }

  /// Create a copy of RPTodoCategoryAction
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $RPToDoCategoryCopyWith<$Res> get category {
    return $RPToDoCategoryCopyWith<$Res>(_value.category, (value) {
      return _then(_value.copyWith(category: value));
    });
  }
}

/// @nodoc

class _$AddCategoryActionImpl implements AddCategoryAction {
  const _$AddCategoryActionImpl({required this.category});

  @override
  final RPToDoCategory category;

  @override
  String toString() {
    return 'RPTodoCategoryAction.addCategory(category: $category)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddCategoryActionImpl &&
            (identical(other.category, category) ||
                other.category == category));
  }

  @override
  int get hashCode => Object.hash(runtimeType, category);

  /// Create a copy of RPTodoCategoryAction
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AddCategoryActionImplCopyWith<_$AddCategoryActionImpl> get copyWith =>
      __$$AddCategoryActionImplCopyWithImpl<_$AddCategoryActionImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(RPToDoCategory category) addCategory,
    required TResult Function(String categoryId) removeCategory,
  }) {
    return addCategory(category);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(RPToDoCategory category)? addCategory,
    TResult? Function(String categoryId)? removeCategory,
  }) {
    return addCategory?.call(category);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(RPToDoCategory category)? addCategory,
    TResult Function(String categoryId)? removeCategory,
    required TResult orElse(),
  }) {
    if (addCategory != null) {
      return addCategory(category);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AddCategoryAction value) addCategory,
    required TResult Function(RemoveCategoryAction value) removeCategory,
  }) {
    return addCategory(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AddCategoryAction value)? addCategory,
    TResult? Function(RemoveCategoryAction value)? removeCategory,
  }) {
    return addCategory?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AddCategoryAction value)? addCategory,
    TResult Function(RemoveCategoryAction value)? removeCategory,
    required TResult orElse(),
  }) {
    if (addCategory != null) {
      return addCategory(this);
    }
    return orElse();
  }
}

abstract class AddCategoryAction implements RPTodoCategoryAction {
  const factory AddCategoryAction({required final RPToDoCategory category}) =
      _$AddCategoryActionImpl;

  RPToDoCategory get category;

  /// Create a copy of RPTodoCategoryAction
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AddCategoryActionImplCopyWith<_$AddCategoryActionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RemoveCategoryActionImplCopyWith<$Res> {
  factory _$$RemoveCategoryActionImplCopyWith(_$RemoveCategoryActionImpl value,
          $Res Function(_$RemoveCategoryActionImpl) then) =
      __$$RemoveCategoryActionImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String categoryId});
}

/// @nodoc
class __$$RemoveCategoryActionImplCopyWithImpl<$Res>
    extends _$RPTodoCategoryActionCopyWithImpl<$Res, _$RemoveCategoryActionImpl>
    implements _$$RemoveCategoryActionImplCopyWith<$Res> {
  __$$RemoveCategoryActionImplCopyWithImpl(_$RemoveCategoryActionImpl _value,
      $Res Function(_$RemoveCategoryActionImpl) _then)
      : super(_value, _then);

  /// Create a copy of RPTodoCategoryAction
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? categoryId = null,
  }) {
    return _then(_$RemoveCategoryActionImpl(
      categoryId: null == categoryId
          ? _value.categoryId
          : categoryId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$RemoveCategoryActionImpl implements RemoveCategoryAction {
  const _$RemoveCategoryActionImpl({required this.categoryId});

  @override
  final String categoryId;

  @override
  String toString() {
    return 'RPTodoCategoryAction.removeCategory(categoryId: $categoryId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RemoveCategoryActionImpl &&
            (identical(other.categoryId, categoryId) ||
                other.categoryId == categoryId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, categoryId);

  /// Create a copy of RPTodoCategoryAction
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RemoveCategoryActionImplCopyWith<_$RemoveCategoryActionImpl>
      get copyWith =>
          __$$RemoveCategoryActionImplCopyWithImpl<_$RemoveCategoryActionImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(RPToDoCategory category) addCategory,
    required TResult Function(String categoryId) removeCategory,
  }) {
    return removeCategory(categoryId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(RPToDoCategory category)? addCategory,
    TResult? Function(String categoryId)? removeCategory,
  }) {
    return removeCategory?.call(categoryId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(RPToDoCategory category)? addCategory,
    TResult Function(String categoryId)? removeCategory,
    required TResult orElse(),
  }) {
    if (removeCategory != null) {
      return removeCategory(categoryId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AddCategoryAction value) addCategory,
    required TResult Function(RemoveCategoryAction value) removeCategory,
  }) {
    return removeCategory(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AddCategoryAction value)? addCategory,
    TResult? Function(RemoveCategoryAction value)? removeCategory,
  }) {
    return removeCategory?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AddCategoryAction value)? addCategory,
    TResult Function(RemoveCategoryAction value)? removeCategory,
    required TResult orElse(),
  }) {
    if (removeCategory != null) {
      return removeCategory(this);
    }
    return orElse();
  }
}

abstract class RemoveCategoryAction implements RPTodoCategoryAction {
  const factory RemoveCategoryAction({required final String categoryId}) =
      _$RemoveCategoryActionImpl;

  String get categoryId;

  /// Create a copy of RPTodoCategoryAction
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RemoveCategoryActionImplCopyWith<_$RemoveCategoryActionImpl>
      get copyWith => throw _privateConstructorUsedError;
}
