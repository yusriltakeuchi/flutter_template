import 'package:animate_do/animate_do.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_template/bloc/auth/auth_session_bloc.dart';
import 'package:flutter_template/config/app_config.dart';
import 'package:flutter_template/core/components/idle/idle_item.dart';
import 'package:flutter_template/extension/extensions.dart';
import 'package:flutter_template/routing/route.gr.dart';
import 'package:flutter_template/theme/theme.dart';
import 'package:flutter_template/utils/flavor/flavor_utils.dart';

@RoutePage()
class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarIconBrightness: Brightness.dark,
    ));
    return Scaffold(
      body: MultiBlocProvider(
        providers: [
          BlocProvider<AuthSessionBloc>(
            create: (context) => AuthSessionBloc()..checkSession(),
          ),
        ],
        child: const SplashBody(),
      ),
    );
  }
}


class SplashBody extends StatefulWidget {
  const SplashBody({super.key});

  @override
  State<SplashBody> createState() => _SplashBodyState();
}

class _SplashBodyState extends State<SplashBody> {
  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthSessionBloc, AuthSessionState>(
      listener: (context, state) {
        if (state is AuthSessionsLoadedState) {
          Future.delayed(const Duration(seconds: 2)).then((value) {
            if (state.sessions) {
              context.router.replaceAll([const HomeRoute()]);
            } else {
              context.router.replaceAll([const HomeRoute()]);
            }
          });
        }
      },
      child: Stack(
        children: [
          Center(
            child: ZoomIn(
              delay: const Duration(milliseconds: 700),
              duration: const Duration(milliseconds: 300),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  FlutterLogo(
                    size: AppSetting.deviceWidth / 2,
                  ),
                  Space.h(20),
                  Text(
                    flavor.current.name,
                    style: MyTheme.style.title.copyWith(
                      color: context.blackWhiteColor,
                      fontSize: AppSetting.setFontSize(50),
                    ),
                  )
                ],
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: SafeArea(
              child: Center(
                child: Column(
                  children: [
                    const IdleLoading(),
                    Space.h(30),
                    Text(
                      "Ver 1.0.0",
                      style: MyTheme.style.subtitle.copyWith(
                        color: context.blackWhiteColor,
                        fontSize: AppSetting.setFontSize(40),
                      ),
                    ),
                    Space.h(50),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

}
