// Created on 24-02-2025 22:47 by mac

part of 'theme_bloc.dart';

@freezed
class ThemeState with _$ThemeState {
  const factory ThemeState.initial() = _ThemeInitialState;
  const factory ThemeState.loading() = _GetThemeLoadingState;
  const factory ThemeState.error(String message) = _GetThemeErrorState;
  const factory ThemeState.loaded({
    required ThemeMode mode,
  }) = _GetThemeLoadedState;
}