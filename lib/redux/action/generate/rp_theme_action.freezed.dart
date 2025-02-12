// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '../rp_theme_action.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$RPThemeAction {
  RPThemeType get themeType => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(RPThemeType themeType) changeTheme,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(RPThemeType themeType)? changeTheme,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(RPThemeType themeType)? changeTheme,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ChangeThemeAction value) changeTheme,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ChangeThemeAction value)? changeTheme,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ChangeThemeAction value)? changeTheme,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Create a copy of RPThemeAction
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RPThemeActionCopyWith<RPThemeAction> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RPThemeActionCopyWith<$Res> {
  factory $RPThemeActionCopyWith(
          RPThemeAction value, $Res Function(RPThemeAction) then) =
      _$RPThemeActionCopyWithImpl<$Res, RPThemeAction>;
  @useResult
  $Res call({RPThemeType themeType});
}

/// @nodoc
class _$RPThemeActionCopyWithImpl<$Res, $Val extends RPThemeAction>
    implements $RPThemeActionCopyWith<$Res> {
  _$RPThemeActionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RPThemeAction
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? themeType = null,
  }) {
    return _then(_value.copyWith(
      themeType: null == themeType
          ? _value.themeType
          : themeType // ignore: cast_nullable_to_non_nullable
              as RPThemeType,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ChangeThemeActionImplCopyWith<$Res>
    implements $RPThemeActionCopyWith<$Res> {
  factory _$$ChangeThemeActionImplCopyWith(_$ChangeThemeActionImpl value,
          $Res Function(_$ChangeThemeActionImpl) then) =
      __$$ChangeThemeActionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({RPThemeType themeType});
}

/// @nodoc
class __$$ChangeThemeActionImplCopyWithImpl<$Res>
    extends _$RPThemeActionCopyWithImpl<$Res, _$ChangeThemeActionImpl>
    implements _$$ChangeThemeActionImplCopyWith<$Res> {
  __$$ChangeThemeActionImplCopyWithImpl(_$ChangeThemeActionImpl _value,
      $Res Function(_$ChangeThemeActionImpl) _then)
      : super(_value, _then);

  /// Create a copy of RPThemeAction
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? themeType = null,
  }) {
    return _then(_$ChangeThemeActionImpl(
      themeType: null == themeType
          ? _value.themeType
          : themeType // ignore: cast_nullable_to_non_nullable
              as RPThemeType,
    ));
  }
}

/// @nodoc

class _$ChangeThemeActionImpl implements ChangeThemeAction {
  const _$ChangeThemeActionImpl({required this.themeType});

  @override
  final RPThemeType themeType;

  @override
  String toString() {
    return 'RPThemeAction.changeTheme(themeType: $themeType)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChangeThemeActionImpl &&
            (identical(other.themeType, themeType) ||
                other.themeType == themeType));
  }

  @override
  int get hashCode => Object.hash(runtimeType, themeType);

  /// Create a copy of RPThemeAction
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ChangeThemeActionImplCopyWith<_$ChangeThemeActionImpl> get copyWith =>
      __$$ChangeThemeActionImplCopyWithImpl<_$ChangeThemeActionImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(RPThemeType themeType) changeTheme,
  }) {
    return changeTheme(themeType);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(RPThemeType themeType)? changeTheme,
  }) {
    return changeTheme?.call(themeType);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(RPThemeType themeType)? changeTheme,
    required TResult orElse(),
  }) {
    if (changeTheme != null) {
      return changeTheme(themeType);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ChangeThemeAction value) changeTheme,
  }) {
    return changeTheme(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ChangeThemeAction value)? changeTheme,
  }) {
    return changeTheme?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ChangeThemeAction value)? changeTheme,
    required TResult orElse(),
  }) {
    if (changeTheme != null) {
      return changeTheme(this);
    }
    return orElse();
  }
}

abstract class ChangeThemeAction implements RPThemeAction {
  const factory ChangeThemeAction({required final RPThemeType themeType}) =
      _$ChangeThemeActionImpl;

  @override
  RPThemeType get themeType;

  /// Create a copy of RPThemeAction
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ChangeThemeActionImplCopyWith<_$ChangeThemeActionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
