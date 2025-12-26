// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$UserState {
  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is UserState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'UserState()';
  }
}

/// @nodoc
class $UserStateCopyWith<$Res> {
  $UserStateCopyWith(UserState _, $Res Function(UserState) __);
}

/// Adds pattern-matching-related methods to [UserState].
extension UserStatePatterns on UserState {
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
    TResult Function(_UserInitialState value)? initial,
    TResult Function(_GetUserLoadingState value)? loading,
    TResult Function(_GetUserErrorState value)? error,
    TResult Function(_GetUserLoadedState value)? loaded,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _UserInitialState() when initial != null:
        return initial(_that);
      case _GetUserLoadingState() when loading != null:
        return loading(_that);
      case _GetUserErrorState() when error != null:
        return error(_that);
      case _GetUserLoadedState() when loaded != null:
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
    required TResult Function(_UserInitialState value) initial,
    required TResult Function(_GetUserLoadingState value) loading,
    required TResult Function(_GetUserErrorState value) error,
    required TResult Function(_GetUserLoadedState value) loaded,
  }) {
    final _that = this;
    switch (_that) {
      case _UserInitialState():
        return initial(_that);
      case _GetUserLoadingState():
        return loading(_that);
      case _GetUserErrorState():
        return error(_that);
      case _GetUserLoadedState():
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
    TResult? Function(_UserInitialState value)? initial,
    TResult? Function(_GetUserLoadingState value)? loading,
    TResult? Function(_GetUserErrorState value)? error,
    TResult? Function(_GetUserLoadedState value)? loaded,
  }) {
    final _that = this;
    switch (_that) {
      case _UserInitialState() when initial != null:
        return initial(_that);
      case _GetUserLoadingState() when loading != null:
        return loading(_that);
      case _GetUserErrorState() when error != null:
        return error(_that);
      case _GetUserLoadedState() when loaded != null:
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
    TResult Function(List<UserEntity> users, int page, bool hasReachedMax,
            bool onLoadMore)?
        loaded,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _UserInitialState() when initial != null:
        return initial();
      case _GetUserLoadingState() when loading != null:
        return loading();
      case _GetUserErrorState() when error != null:
        return error(_that.message);
      case _GetUserLoadedState() when loaded != null:
        return loaded(
            _that.users, _that.page, _that.hasReachedMax, _that.onLoadMore);
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
    required TResult Function(List<UserEntity> users, int page,
            bool hasReachedMax, bool onLoadMore)
        loaded,
  }) {
    final _that = this;
    switch (_that) {
      case _UserInitialState():
        return initial();
      case _GetUserLoadingState():
        return loading();
      case _GetUserErrorState():
        return error(_that.message);
      case _GetUserLoadedState():
        return loaded(
            _that.users, _that.page, _that.hasReachedMax, _that.onLoadMore);
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
    TResult? Function(List<UserEntity> users, int page, bool hasReachedMax,
            bool onLoadMore)?
        loaded,
  }) {
    final _that = this;
    switch (_that) {
      case _UserInitialState() when initial != null:
        return initial();
      case _GetUserLoadingState() when loading != null:
        return loading();
      case _GetUserErrorState() when error != null:
        return error(_that.message);
      case _GetUserLoadedState() when loaded != null:
        return loaded(
            _that.users, _that.page, _that.hasReachedMax, _that.onLoadMore);
      case _:
        return null;
    }
  }
}

/// @nodoc

class _UserInitialState implements UserState {
  const _UserInitialState();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _UserInitialState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'UserState.initial()';
  }
}

/// @nodoc

class _GetUserLoadingState implements UserState {
  const _GetUserLoadingState();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _GetUserLoadingState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'UserState.loading()';
  }
}

/// @nodoc

class _GetUserErrorState implements UserState {
  const _GetUserErrorState(this.message);

  final String message;

  /// Create a copy of UserState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$GetUserErrorStateCopyWith<_GetUserErrorState> get copyWith =>
      __$GetUserErrorStateCopyWithImpl<_GetUserErrorState>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _GetUserErrorState &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @override
  String toString() {
    return 'UserState.error(message: $message)';
  }
}

/// @nodoc
abstract mixin class _$GetUserErrorStateCopyWith<$Res>
    implements $UserStateCopyWith<$Res> {
  factory _$GetUserErrorStateCopyWith(
          _GetUserErrorState value, $Res Function(_GetUserErrorState) _then) =
      __$GetUserErrorStateCopyWithImpl;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$GetUserErrorStateCopyWithImpl<$Res>
    implements _$GetUserErrorStateCopyWith<$Res> {
  __$GetUserErrorStateCopyWithImpl(this._self, this._then);

  final _GetUserErrorState _self;
  final $Res Function(_GetUserErrorState) _then;

  /// Create a copy of UserState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? message = null,
  }) {
    return _then(_GetUserErrorState(
      null == message
          ? _self.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _GetUserLoadedState implements UserState {
  const _GetUserLoadedState(
      {required final List<UserEntity> users,
      required this.page,
      required this.hasReachedMax,
      required this.onLoadMore})
      : _users = users;

  final List<UserEntity> _users;
  List<UserEntity> get users {
    if (_users is EqualUnmodifiableListView) return _users;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_users);
  }

  final int page;
  final bool hasReachedMax;
  final bool onLoadMore;

  /// Create a copy of UserState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$GetUserLoadedStateCopyWith<_GetUserLoadedState> get copyWith =>
      __$GetUserLoadedStateCopyWithImpl<_GetUserLoadedState>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _GetUserLoadedState &&
            const DeepCollectionEquality().equals(other._users, _users) &&
            (identical(other.page, page) || other.page == page) &&
            (identical(other.hasReachedMax, hasReachedMax) ||
                other.hasReachedMax == hasReachedMax) &&
            (identical(other.onLoadMore, onLoadMore) ||
                other.onLoadMore == onLoadMore));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_users),
      page,
      hasReachedMax,
      onLoadMore);

  @override
  String toString() {
    return 'UserState.loaded(users: $users, page: $page, hasReachedMax: $hasReachedMax, onLoadMore: $onLoadMore)';
  }
}

/// @nodoc
abstract mixin class _$GetUserLoadedStateCopyWith<$Res>
    implements $UserStateCopyWith<$Res> {
  factory _$GetUserLoadedStateCopyWith(
          _GetUserLoadedState value, $Res Function(_GetUserLoadedState) _then) =
      __$GetUserLoadedStateCopyWithImpl;
  @useResult
  $Res call(
      {List<UserEntity> users, int page, bool hasReachedMax, bool onLoadMore});
}

/// @nodoc
class __$GetUserLoadedStateCopyWithImpl<$Res>
    implements _$GetUserLoadedStateCopyWith<$Res> {
  __$GetUserLoadedStateCopyWithImpl(this._self, this._then);

  final _GetUserLoadedState _self;
  final $Res Function(_GetUserLoadedState) _then;

  /// Create a copy of UserState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? users = null,
    Object? page = null,
    Object? hasReachedMax = null,
    Object? onLoadMore = null,
  }) {
    return _then(_GetUserLoadedState(
      users: null == users
          ? _self._users
          : users // ignore: cast_nullable_to_non_nullable
              as List<UserEntity>,
      page: null == page
          ? _self.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      hasReachedMax: null == hasReachedMax
          ? _self.hasReachedMax
          : hasReachedMax // ignore: cast_nullable_to_non_nullable
              as bool,
      onLoadMore: null == onLoadMore
          ? _self.onLoadMore
          : onLoadMore // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

// dart format on
