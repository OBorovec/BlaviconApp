import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import '../route_generator.dart';

class MainDrawer extends StatelessWidget {
  const MainDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.blue,
            ),
            child: Text(''),
          ),
          ListTile(
            title: Text(AppLocalizations.of(context)!.appBarHome),
            onTap: () {
              Navigator.pushNamed(context, homeRoute);
              // Navigator.pop(context);
            },
          ),
          ListTile(
            title: Text(AppLocalizations.of(context)!.appBarSetting),
            onTap: () {
              Navigator.pushNamed(context, settingRoute);
              // Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }
}
