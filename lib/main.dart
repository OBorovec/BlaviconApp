import 'package:blavicon_app/bloc/theme/theme_bloc.dart';
import 'package:blavicon_app/route_generator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ThemeBloc(),
      child:BlocBuilder<ThemeBloc, ThemeState>(builder: _buildWithTheme),
    );
  }

  Widget _buildWithTheme(BuildContext context, ThemeState state) {
    return MaterialApp(
      title: 'Material App',
      theme: state.themeData,
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      // home: SplashScreen.navigate(
      //   name: 'assets/flare_anims/WitcherWolf.flr',
      //   next: (context) => HomePage(),
      //   until: () => Future.delayed(Duration(seconds: 5)),
      //   startAnimation: 'fadeIn',
      //   loopAnimation: 'progress',
      //   endAnimation: 'fadeOut',
      // ),
      initialRoute: '/',
      onGenerateRoute: RouteGenerator.generateRoute,
    );
  }
}
