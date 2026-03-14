// Created on 05-02-2025 15:22 by mac

part of 'user_bloc.dart';

@freezed
class UserState with _$UserState {
  const factory UserState.initial() = _UserInitialState;
  const factory UserState.loading() = _GetUserLoadingState;
  const factory UserState.error(String message) = _GetUserErrorState;
  const factory UserState.loaded({
    required List<UserEntity> users,
    required int page,
    required bool hasReachedMax,
    required bool onLoadMore,
  }) = _GetUserLoadedState;
}