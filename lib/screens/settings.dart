import 'dart:math';

import 'package:blavicon_app/bloc/theme/theme_bloc.dart';
import 'package:blavicon_app/theme/app_themes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import 'package:provider/provider.dart';

import 'drawer.dart';

class SettingPage extends StatelessWidget {
  const SettingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(AppLocalizations.of(context)!.appBarSetting),
      ),
      drawer: MainDrawer(),
      body: Padding(
        padding: EdgeInsets.all(5),
        child: Column(
          children: [_themeSwitch(context), Divider()],
        ),
      ),
    );
  }

  BlocBuilder _themeSwitch(BuildContext context) {
    return BlocBuilder<ThemeBloc, ThemeState>(
      builder: (context, state) {
        return Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(AppLocalizations.of(context)!.settingTheme),
            Switch(
                value: !(state.appTheme == AppTheme.light),
                onChanged: (value) {
                  BlocProvider.of<ThemeBloc>(context).add(ThemeChanged());
                })
          ],
        );
      },
    );
  }
}
