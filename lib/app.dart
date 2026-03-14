import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_template/presentation//bloc/theme/theme_bloc.dart';
import 'package:flutter_template/config/app_config.dart';
import 'package:flutter_template/injection/injector.dart';
import 'package:flutter_template/utils/flavor/flavor_utils.dart';
import 'package:flutter_template/routing/route.dart';
import 'package:flutter_template/routing/route_observer.dart';

final appRouter = inject<AppRouter>();

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  @override
  Widget build(BuildContext context) {
    return OrientationBuilder(
      builder: (context, orientation) {
        return ScreenUtilInit(
            designSize: orientation == Orientation.portrait
              ? const Size(1080, 1920)  /// Portrait design size
              : const Size(1920, 1080), /// Landscape design size
          minTextAdapt: true,
          splitScreenMode: true,
          builder: (context, _) {
            return BlocProvider<ThemeBloc>(
              create: (context) => ThemeBloc()..getTheme(),
              child: BlocBuilder<ThemeBloc, ThemeState>(
                builder: (context, state) {
                  return state.maybeWhen(
                    loaded: (mode) {
                      return MaterialApp.router(
                        routerConfig: appRouter.config(
                          navigatorObservers: () => [RouterObserver()],
                          deepLinkBuilder: (deepLink) {
                            if (deepLink.path.startsWith("/invoice")) {
                              /// Do something
                              return deepLink;
                            } else {
                              return DeepLink.defaultPath;
                            }
                          },
                        ),
                        theme: AppTheme.lightTheme,
                        darkTheme: AppTheme.darkTheme,
                        themeMode: mode,
                        title: flavor.current.name,
                        debugShowCheckedModeBanner: false,
                        localeResolutionCallback: (locale, supportedLocales) {
                          // Check if the current device locale is supported
                          for (var supportedLocale in supportedLocales) {
                            if (supportedLocale.languageCode ==
                                    locale?.languageCode &&
                                supportedLocale.countryCode ==
                                    locale?.countryCode) {
                              return supportedLocale;
                            }
                          }
                          // If the locale of the device is not supported, use the first one
                          return supportedLocales.first;
                        },
                        builder: (ctx, child) {
                          return MediaQuery(
                            data: MediaQuery.of(ctx).copyWith(),
                            child: ScrollConfiguration(
                              behavior: MyBehavior(),
                              child: flavor.current.type == FlavorType.prod
                                  ? child!
                                  : Banner(
                                      location: BannerLocation.topEnd,
                                      message: flavor.current.type
                                          .toString()
                                          .split('.')
                                          .last
                                          .toUpperCase(),
                                      child: child!,
                                    ),
                            ),
                          );
                        },
                      );
                    },
                    orElse: () => const SizedBox(),
                  );
                },
              ),
            );
          },
        );
      },
    );
  }
}

class MyBehavior extends ScrollBehavior {
  Widget buildViewportChrome(
    BuildContext context,
    Widget child,
    AxisDirection axisDirection,
  ) {
    return child;
  }
}
