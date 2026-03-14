// Created on 29-08-2024 10:33 by mac

part of 'auth_session_bloc.dart';

sealed class AuthSessionState extends Equatable {
  const AuthSessionState();

  @override
  List<Object> get props => [];
}

final class AuthSessionInitialState extends AuthSessionState {}
final class AuthSessionLoadingState extends AuthSessionState {}
final class AuthSessionErrorState extends AuthSessionState {
  final String message;
  const AuthSessionErrorState(this.message);

  @override
  List<Object> get props => [message];
}
final class AuthSessionsLoadedState extends AuthSessionState {
  final bool sessions;
  const AuthSessionsLoadedState(this.sessions);
  @override
  List<Object> get props => [sessions];
}