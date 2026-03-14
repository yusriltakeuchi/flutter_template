// Created on 29-08-2024 10:33 by mac
import 'package:equatable/equatable.dart';
import 'package:flutter_template/domain/cubit/safe_cubit.dart';
import 'package:flutter_template/injection/injector.dart';
import 'package:flutter_template/infrastructure/repositories/auth/auth_repository_impl.dart';
import 'package:flutter_template/domain/repositories/auth/auth_repository.dart';

part 'auth_session_state.dart';

class AuthSessionBloc extends SafeCubit<AuthSessionState> {
  AuthSessionBloc() : super(AuthSessionInitialState());
  final AuthRepository authRepository = inject<AuthRepositoryImpl>();

  Future<void> checkSession() async {
    emit(AuthSessionLoadingState());
    try {
      final sessions = await authRepository.getSession();
      emit(AuthSessionsLoadedState(sessions));
    } catch (e) {
      emit(AuthSessionErrorState(e.toString()));
    }
  }
}