// Created on 05-02-2025 15:22 by mac

import 'package:flutter_template/domain/cubit/safe_cubit.dart';
import 'package:flutter_template/domain/entities/user/user_entity.dart';
import 'package:flutter_template/domain/repositories/user/user_repository.dart';
import 'package:flutter_template/infrastructure/repositories/user/user_repository_impl.dart';
import 'package:flutter_template/injection/injector.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_state.dart';

part 'user_bloc.freezed.dart';

class UserBloc extends SafeCubit<UserState> {
  UserBloc() : super(const UserState.initial());
  final UserRepository userRepository = inject<UserRepositoryImpl>();

  Future<void> getUsers({Map<String, dynamic>? params}) async {
    emit(const UserState.loading());
    final result = await userRepository.getUsers(params: params);
    result.fold(
      (left) => emit(UserState.error(left.message)),
      (right) => emit(UserState.loaded(
        users: right,
        page: 2,
        hasReachedMax: false,
        onLoadMore: false,
      )),
    );
  }

  Future<void> loadMore() async {
    state.maybeWhen(
      orElse: () {},
      loaded: (users, page, hasReachedMax, onLoadMore) async {
        emit(UserState.loaded(
          users: users,
          page: page,
          hasReachedMax: hasReachedMax,
          onLoadMore: true,
        ));

        if (hasReachedMax) {
          emit(UserState.loaded(
            users: users,
            page: page,
            hasReachedMax: true,
            onLoadMore: false,
          ));
          return;
        }

        final filter = {'page': page};
        final result = await userRepository.getUsers(params: filter);
        result.fold(
          (error) => emit(UserState.error(error.message)),
          (data) {
            if (data.isEmpty) {
              emit(UserState.loaded(
                users: users,
                page: page,
                hasReachedMax: true,
                onLoadMore: false,
              ));
            } else {
              emit(UserState.loaded(
                users: users + data,
                page: page + 1,
                hasReachedMax: false,
                onLoadMore: false,
              ));
            }
          },
        );
      },
    );
  }
}
