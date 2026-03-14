// Created on 24-02-2025 22:47 by mac

import 'package:flutter/material.dart';
import 'package:flutter_template/domain/cubit/safe_cubit.dart';
import 'package:flutter_template/utils/manager/shared_manager.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'theme_state.dart';

part 'theme_bloc.freezed.dart';

class ThemeBloc extends SafeCubit<ThemeState> {
  ThemeBloc() : super(const ThemeState.initial());

  Future<void> getTheme() async {
    emit(const ThemeState.loading());
    try {
      final shared = SharedManager<String>();
      final theme = await shared.read('theme');
      if (theme == null) {
        emit(const ThemeState.loaded(mode: ThemeMode.system));
      } else {
        emit(ThemeState.loaded(mode: ThemeMode.values.firstWhere((e) => e.toString() == theme)));
      }
    } catch (e) {
      emit(const ThemeState.error('Failed to get theme'));
    }
  }

  Future<void> setTheme(ThemeMode mode) async {
    emit(const ThemeState.loading());
    try {
      final shared = SharedManager<String>();
      await shared.store('theme', mode.toString());
      emit(ThemeState.loaded(mode: mode));
    } catch (e) {
      emit(const ThemeState.error('Failed to set theme'));
    }
  }
}
