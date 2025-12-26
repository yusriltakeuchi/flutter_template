import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_login_dto.freezed.dart';

part 'auth_login_dto.g.dart';

@Freezed(fromJson: false, toJson: true)
abstract class AuthLoginDTO with _$AuthLoginDTO {
  const factory AuthLoginDTO({
    @JsonKey(name: 'email') required String email,
    @JsonKey(name: 'password') required String password,
  }) = _AuthLoginDTO;
}