import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:minsili/src/blocs/theme.bloc.dart';
import 'package:minsili/src/utils/themes.dart';
import 'package:minsili/src/views/screens/splash.dart';

void main() => runApp(MultiBlocProvider(providers: [
  BlocProvider<ThemeBloc>(
    create: (BuildContext context) => ThemeBloc()..add(ThemeLoadStarted()),
  ),
], child: App()));

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ThemeBloc, ThemeState>(
      builder: (context, themeState) {
        return MaterialApp(
          title: 'MINSILI',
          themeMode: themeState.themeMode,
          theme: buildThemeLight(context),
          darkTheme: buildThemeDark(context),
          home: SplashscreenUI(),
        );
      },
    );
  }
}
