import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_template/bloc/theme/theme_bloc.dart';
import 'package:flutter_template/bloc/user/user_bloc.dart';
import 'package:flutter_template/config/app_config.dart';
import 'package:flutter_template/core/components/idle/idle_item.dart';
import 'package:flutter_template/core/components/loading/loading_listview.dart';
import 'package:flutter_template/extension/extensions.dart';
import 'package:flutter_template/theme/theme.dart';

@RoutePage()
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Home Screen',
          style: MyTheme.style.title.copyWith(
            color: MyTheme.color.white,
            fontSize: AppSetting.setFontSize(45),
          ),
        ),
        automaticallyImplyLeading: false,
        backgroundColor: context.isDark
          ? context.containerColor
          : MyTheme.color.primary,
        actions: [
          /// Icon button choose popup menu button theme from Light, Dark or System
          PopupMenuButton<ThemeMode>(
            icon: Icon(
              Icons.more_vert,
              color: MyTheme.color.white,
            ),
            onSelected: (ThemeMode mode) {
              context.read<ThemeBloc>().setTheme(mode);
            },
            itemBuilder: (BuildContext context) {
              return <PopupMenuEntry<ThemeMode>>[
                const PopupMenuItem<ThemeMode>(
                  value: ThemeMode.light,
                  child: Text('Light'),
                ),
                const PopupMenuItem<ThemeMode>(
                  value: ThemeMode.dark,
                  child: Text('Dark'),
                ),
                const PopupMenuItem<ThemeMode>(
                  value: ThemeMode.system,
                  child: Text('System'),
                ),
              ];
            },
          ),
        ],
      ),
      body: BlocProvider(
        create: (context) => UserBloc()..getUsers(params: {'page': 1}),
        child: const HomeBody(),
      ),
    );
  }
}

class HomeBody extends StatelessWidget {
  const HomeBody({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<UserBloc, UserState>(
      builder: (context, state) {
        return state.when(
          initial: () => const IdleLoading(),
          loading: () => const LoadingListView(),
          error: (message) => IdleNoItemCenter(title: message),
          loaded: (users, page, hasReachedMax, onLoadMore) {
            return ListView.builder(
              itemCount: users.length,
              itemBuilder: (context, index) {
                final user = users[index];
                return ListTile(
                  leading: CircleAvatar(
                    backgroundImage: NetworkImage(user.avatar ?? ""),
                  ),
                  title: Text("${user.firstName} ${user.lastName}"),
                  subtitle: Text(user.email ?? ""),
                );
              },
            );
          },
        );
      },
    );
  }
}
