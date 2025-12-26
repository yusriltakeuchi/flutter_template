// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_login_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$AuthLoginDTO {
  @JsonKey(name: 'email')
  String get email;
  @JsonKey(name: 'password')
  String get password;

  /// Create a copy of AuthLoginDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $AuthLoginDTOCopyWith<AuthLoginDTO> get copyWith =>
      _$AuthLoginDTOCopyWithImpl<AuthLoginDTO>(
          this as AuthLoginDTO, _$identity);

  /// Serializes this AuthLoginDTO to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is AuthLoginDTO &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, email, password);

  @override
  String toString() {
    return 'AuthLoginDTO(email: $email, password: $password)';
  }
}

/// @nodoc
abstract mixin class $AuthLoginDTOCopyWith<$Res> {
  factory $AuthLoginDTOCopyWith(
          AuthLoginDTO value, $Res Function(AuthLoginDTO) _then) =
      _$AuthLoginDTOCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(name: 'email') String email,
      @JsonKey(name: 'password') String password});
}

/// @nodoc
class _$AuthLoginDTOCopyWithImpl<$Res> implements $AuthLoginDTOCopyWith<$Res> {
  _$AuthLoginDTOCopyWithImpl(this._self, this._then);

  final AuthLoginDTO _self;
  final $Res Function(AuthLoginDTO) _then;

  /// Create a copy of AuthLoginDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? password = null,
  }) {
    return _then(_self.copyWith(
      email: null == email
          ? _self.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _self.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// Adds pattern-matching-related methods to [AuthLoginDTO].
extension AuthLoginDTOPatterns on AuthLoginDTO {
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
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_AuthLoginDTO value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _AuthLoginDTO() when $default != null:
        return $default(_that);
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
  TResult map<TResult extends Object?>(
    TResult Function(_AuthLoginDTO value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _AuthLoginDTO():
        return $default(_that);
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
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_AuthLoginDTO value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _AuthLoginDTO() when $default != null:
        return $default(_that);
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
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(@JsonKey(name: 'email') String email,
            @JsonKey(name: 'password') String password)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _AuthLoginDTO() when $default != null:
        return $default(_that.email, _that.password);
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
  TResult when<TResult extends Object?>(
    TResult Function(@JsonKey(name: 'email') String email,
            @JsonKey(name: 'password') String password)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _AuthLoginDTO():
        return $default(_that.email, _that.password);
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
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(@JsonKey(name: 'email') String email,
            @JsonKey(name: 'password') String password)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _AuthLoginDTO() when $default != null:
        return $default(_that.email, _that.password);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable(createFactory: false)
class _AuthLoginDTO implements AuthLoginDTO {
  const _AuthLoginDTO(
      {@JsonKey(name: 'email') required this.email,
      @JsonKey(name: 'password') required this.password});

  @override
  @JsonKey(name: 'email')
  final String email;
  @override
  @JsonKey(name: 'password')
  final String password;

  /// Create a copy of AuthLoginDTO
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$AuthLoginDTOCopyWith<_AuthLoginDTO> get copyWith =>
      __$AuthLoginDTOCopyWithImpl<_AuthLoginDTO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$AuthLoginDTOToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _AuthLoginDTO &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, email, password);

  @override
  String toString() {
    return 'AuthLoginDTO(email: $email, password: $password)';
  }
}

/// @nodoc
abstract mixin class _$AuthLoginDTOCopyWith<$Res>
    implements $AuthLoginDTOCopyWith<$Res> {
  factory _$AuthLoginDTOCopyWith(
          _AuthLoginDTO value, $Res Function(_AuthLoginDTO) _then) =
      __$AuthLoginDTOCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'email') String email,
      @JsonKey(name: 'password') String password});
}

/// @nodoc
class __$AuthLoginDTOCopyWithImpl<$Res>
    implements _$AuthLoginDTOCopyWith<$Res> {
  __$AuthLoginDTOCopyWithImpl(this._self, this._then);

  final _AuthLoginDTO _self;
  final $Res Function(_AuthLoginDTO) _then;

  /// Create a copy of AuthLoginDTO
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? email = null,
    Object? password = null,
  }) {
    return _then(_AuthLoginDTO(
      email: null == email
          ? _self.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _self.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

// dart format on
