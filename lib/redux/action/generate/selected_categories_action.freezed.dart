// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '../selected_categories_action.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SelectedCategoriesAction {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String categoryId) toggleCategory,
    required TResult Function() clearSelection,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String categoryId)? toggleCategory,
    TResult? Function()? clearSelection,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String categoryId)? toggleCategory,
    TResult Function()? clearSelection,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ToggleCategoryAction value) toggleCategory,
    required TResult Function(ClearSelectionAction value) clearSelection,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ToggleCategoryAction value)? toggleCategory,
    TResult? Function(ClearSelectionAction value)? clearSelection,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ToggleCategoryAction value)? toggleCategory,
    TResult Function(ClearSelectionAction value)? clearSelection,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SelectedCategoriesActionCopyWith<$Res> {
  factory $SelectedCategoriesActionCopyWith(SelectedCategoriesAction value,
          $Res Function(SelectedCategoriesAction) then) =
      _$SelectedCategoriesActionCopyWithImpl<$Res, SelectedCategoriesAction>;
}

/// @nodoc
class _$SelectedCategoriesActionCopyWithImpl<$Res,
        $Val extends SelectedCategoriesAction>
    implements $SelectedCategoriesActionCopyWith<$Res> {
  _$SelectedCategoriesActionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SelectedCategoriesAction
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$ToggleCategoryActionImplCopyWith<$Res> {
  factory _$$ToggleCategoryActionImplCopyWith(_$ToggleCategoryActionImpl value,
          $Res Function(_$ToggleCategoryActionImpl) then) =
      __$$ToggleCategoryActionImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String categoryId});
}

/// @nodoc
class __$$ToggleCategoryActionImplCopyWithImpl<$Res>
    extends _$SelectedCategoriesActionCopyWithImpl<$Res,
        _$ToggleCategoryActionImpl>
    implements _$$ToggleCategoryActionImplCopyWith<$Res> {
  __$$ToggleCategoryActionImplCopyWithImpl(_$ToggleCategoryActionImpl _value,
      $Res Function(_$ToggleCategoryActionImpl) _then)
      : super(_value, _then);

  /// Create a copy of SelectedCategoriesAction
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? categoryId = null,
  }) {
    return _then(_$ToggleCategoryActionImpl(
      categoryId: null == categoryId
          ? _value.categoryId
          : categoryId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ToggleCategoryActionImpl implements ToggleCategoryAction {
  const _$ToggleCategoryActionImpl({required this.categoryId});

  @override
  final String categoryId;

  @override
  String toString() {
    return 'SelectedCategoriesAction.toggleCategory(categoryId: $categoryId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ToggleCategoryActionImpl &&
            (identical(other.categoryId, categoryId) ||
                other.categoryId == categoryId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, categoryId);

  /// Create a copy of SelectedCategoriesAction
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ToggleCategoryActionImplCopyWith<_$ToggleCategoryActionImpl>
      get copyWith =>
          __$$ToggleCategoryActionImplCopyWithImpl<_$ToggleCategoryActionImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String categoryId) toggleCategory,
    required TResult Function() clearSelection,
  }) {
    return toggleCategory(categoryId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String categoryId)? toggleCategory,
    TResult? Function()? clearSelection,
  }) {
    return toggleCategory?.call(categoryId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String categoryId)? toggleCategory,
    TResult Function()? clearSelection,
    required TResult orElse(),
  }) {
    if (toggleCategory != null) {
      return toggleCategory(categoryId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ToggleCategoryAction value) toggleCategory,
    required TResult Function(ClearSelectionAction value) clearSelection,
  }) {
    return toggleCategory(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ToggleCategoryAction value)? toggleCategory,
    TResult? Function(ClearSelectionAction value)? clearSelection,
  }) {
    return toggleCategory?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ToggleCategoryAction value)? toggleCategory,
    TResult Function(ClearSelectionAction value)? clearSelection,
    required TResult orElse(),
  }) {
    if (toggleCategory != null) {
      return toggleCategory(this);
    }
    return orElse();
  }
}

abstract class ToggleCategoryAction implements SelectedCategoriesAction {
  const factory ToggleCategoryAction({required final String categoryId}) =
      _$ToggleCategoryActionImpl;

  String get categoryId;

  /// Create a copy of SelectedCategoriesAction
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ToggleCategoryActionImplCopyWith<_$ToggleCategoryActionImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ClearSelectionActionImplCopyWith<$Res> {
  factory _$$ClearSelectionActionImplCopyWith(_$ClearSelectionActionImpl value,
          $Res Function(_$ClearSelectionActionImpl) then) =
      __$$ClearSelectionActionImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ClearSelectionActionImplCopyWithImpl<$Res>
    extends _$SelectedCategoriesActionCopyWithImpl<$Res,
        _$ClearSelectionActionImpl>
    implements _$$ClearSelectionActionImplCopyWith<$Res> {
  __$$ClearSelectionActionImplCopyWithImpl(_$ClearSelectionActionImpl _value,
      $Res Function(_$ClearSelectionActionImpl) _then)
      : super(_value, _then);

  /// Create a copy of SelectedCategoriesAction
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ClearSelectionActionImpl implements ClearSelectionAction {
  const _$ClearSelectionActionImpl();

  @override
  String toString() {
    return 'SelectedCategoriesAction.clearSelection()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ClearSelectionActionImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String categoryId) toggleCategory,
    required TResult Function() clearSelection,
  }) {
    return clearSelection();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String categoryId)? toggleCategory,
    TResult? Function()? clearSelection,
  }) {
    return clearSelection?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String categoryId)? toggleCategory,
    TResult Function()? clearSelection,
    required TResult orElse(),
  }) {
    if (clearSelection != null) {
      return clearSelection();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ToggleCategoryAction value) toggleCategory,
    required TResult Function(ClearSelectionAction value) clearSelection,
  }) {
    return clearSelection(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ToggleCategoryAction value)? toggleCategory,
    TResult? Function(ClearSelectionAction value)? clearSelection,
  }) {
    return clearSelection?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ToggleCategoryAction value)? toggleCategory,
    TResult Function(ClearSelectionAction value)? clearSelection,
    required TResult orElse(),
  }) {
    if (clearSelection != null) {
      return clearSelection(this);
    }
    return orElse();
  }
}

abstract class ClearSelectionAction implements SelectedCategoriesAction {
  const factory ClearSelectionAction() = _$ClearSelectionActionImpl;
}
