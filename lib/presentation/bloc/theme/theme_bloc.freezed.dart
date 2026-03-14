// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'theme_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ThemeState {
  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is ThemeState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'ThemeState()';
  }
}

/// @nodoc
class $ThemeStateCopyWith<$Res> {
  $ThemeStateCopyWith(ThemeState _, $Res Function(ThemeState) __);
}

/// Adds pattern-matching-related methods to [ThemeState].
extension ThemeStatePatterns on ThemeState {
  /// A variant of `map` that fallback to returning `orElse`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ThemeInitialState value)? initial,
    TResult Function(_GetThemeLoadingState value)? loading,
    TResult Function(_GetThemeErrorState value)? error,
    TResult Function(_GetThemeLoadedState value)? loaded,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _ThemeInitialState() when initial != null:
        return initial(_that);
      case _GetThemeLoadingState() when loading != null:
        return loading(_that);
      case _GetThemeErrorState() when error != null:
        return error(_that);
      case _GetThemeLoadedState() when loaded != null:
        return loaded(_that);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// Callbacks receives the raw object, upcasted.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case final Subclass2 value:
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ThemeInitialState value) initial,
    required TResult Function(_GetThemeLoadingState value) loading,
    required TResult Function(_GetThemeErrorState value) error,
    required TResult Function(_GetThemeLoadedState value) loaded,
  }) {
    final _that = this;
    switch (_that) {
      case _ThemeInitialState():
        return initial(_that);
      case _GetThemeLoadingState():
        return loading(_that);
      case _GetThemeErrorState():
        return error(_that);
      case _GetThemeLoadedState():
        return loaded(_that);
      case _:
        throw StateError('Unexpected subclass');
    }
  }

  /// A variant of `map` that fallback to returning `null`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ThemeInitialState value)? initial,
    TResult? Function(_GetThemeLoadingState value)? loading,
    TResult? Function(_GetThemeErrorState value)? error,
    TResult? Function(_GetThemeLoadedState value)? loaded,
  }) {
    final _that = this;
    switch (_that) {
      case _ThemeInitialState() when initial != null:
        return initial(_that);
      case _GetThemeLoadingState() when loading != null:
        return loading(_that);
      case _GetThemeErrorState() when error != null:
        return error(_that);
      case _GetThemeLoadedState() when loaded != null:
        return loaded(_that);
      case _:
        return null;
    }
  }

  /// A variant of `when` that fallback to an `orElse` callback.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message)? error,
    TResult Function(ThemeMode mode)? loaded,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _ThemeInitialState() when initial != null:
        return initial();
      case _GetThemeLoadingState() when loading != null:
        return loading();
      case _GetThemeErrorState() when error != null:
        return error(_that.message);
      case _GetThemeLoadedState() when loaded != null:
        return loaded(_that.mode);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// As opposed to `map`, this offers destructuring.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case Subclass2(:final field2):
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String message) error,
    required TResult Function(ThemeMode mode) loaded,
  }) {
    final _that = this;
    switch (_that) {
      case _ThemeInitialState():
        return initial();
      case _GetThemeLoadingState():
        return loading();
      case _GetThemeErrorState():
        return error(_that.message);
      case _GetThemeLoadedState():
        return loaded(_that.mode);
      case _:
        throw StateError('Unexpected subclass');
    }
  }

  /// A variant of `when` that fallback to returning `null`
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String message)? error,
    TResult? Function(ThemeMode mode)? loaded,
  }) {
    final _that = this;
    switch (_that) {
      case _ThemeInitialState() when initial != null:
        return initial();
      case _GetThemeLoadingState() when loading != null:
        return loading();
      case _GetThemeErrorState() when error != null:
        return error(_that.message);
      case _GetThemeLoadedState() when loaded != null:
        return loaded(_that.mode);
      case _:
        return null;
    }
  }
}

/// @nodoc

class _ThemeInitialState implements ThemeState {
  const _ThemeInitialState();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _ThemeInitialState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'ThemeState.initial()';
  }
}

/// @nodoc

class _GetThemeLoadingState implements ThemeState {
  const _GetThemeLoadingState();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _GetThemeLoadingState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'ThemeState.loading()';
  }
}

/// @nodoc

class _GetThemeErrorState implements ThemeState {
  const _GetThemeErrorState(this.message);

  final String message;

  /// Create a copy of ThemeState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$GetThemeErrorStateCopyWith<_GetThemeErrorState> get copyWith =>
      __$GetThemeErrorStateCopyWithImpl<_GetThemeErrorState>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _GetThemeErrorState &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @override
  String toString() {
    return 'ThemeState.error(message: $message)';
  }
}

/// @nodoc
abstract mixin class _$GetThemeErrorStateCopyWith<$Res>
    implements $ThemeStateCopyWith<$Res> {
  factory _$GetThemeErrorStateCopyWith(
          _GetThemeErrorState value, $Res Function(_GetThemeErrorState) _then) =
      __$GetThemeErrorStateCopyWithImpl;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$GetThemeErrorStateCopyWithImpl<$Res>
    implements _$GetThemeErrorStateCopyWith<$Res> {
  __$GetThemeErrorStateCopyWithImpl(this._self, this._then);

  final _GetThemeErrorState _self;
  final $Res Function(_GetThemeErrorState) _then;

  /// Create a copy of ThemeState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? message = null,
  }) {
    return _then(_GetThemeErrorState(
      null == message
          ? _self.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _GetThemeLoadedState implements ThemeState {
  const _GetThemeLoadedState({required this.mode});

  final ThemeMode mode;

  /// Create a copy of ThemeState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$GetThemeLoadedStateCopyWith<_GetThemeLoadedState> get copyWith =>
      __$GetThemeLoadedStateCopyWithImpl<_GetThemeLoadedState>(
          this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _GetThemeLoadedState &&
            (identical(other.mode, mode) || other.mode == mode));
  }

  @override
  int get hashCode => Object.hash(runtimeType, mode);

  @override
  String toString() {
    return 'ThemeState.loaded(mode: $mode)';
  }
}

/// @nodoc
abstract mixin class _$GetThemeLoadedStateCopyWith<$Res>
    implements $ThemeStateCopyWith<$Res> {
  factory _$GetThemeLoadedStateCopyWith(_GetThemeLoadedState value,
          $Res Function(_GetThemeLoadedState) _then) =
      __$GetThemeLoadedStateCopyWithImpl;
  @useResult
  $Res call({ThemeMode mode});
}

/// @nodoc
class __$GetThemeLoadedStateCopyWithImpl<$Res>
    implements _$GetThemeLoadedStateCopyWith<$Res> {
  __$GetThemeLoadedStateCopyWithImpl(this._self, this._then);

  final _GetThemeLoadedState _self;
  final $Res Function(_GetThemeLoadedState) _then;

  /// Create a copy of ThemeState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? mode = null,
  }) {
    return _then(_GetThemeLoadedState(
      mode: null == mode
          ? _self.mode
          : mode // ignore: cast_nullable_to_non_nullable
              as ThemeMode,
    ));
  }
}

// dart format on
