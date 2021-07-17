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
            title: Text(AppLocalizations.of(context)!.appBarProgram),
            onTap: () {
              Navigator.pushNamed(context, programRoute);
              // Navigator.pop(context);
            },
          ),
          ListTile(
            title: Text(AppLocalizations.of(context)!.appBarCatering),
            onTap: () {
              Navigator.pushNamed(context, cateringRoute);
              // Navigator.pop(context);
            },
          ),
          ListTile(
            title: Text(AppLocalizations.of(context)!.appBarDegustation),
            onTap: () {
              Navigator.pushNamed(context, degustationRoute);
              // Navigator.pop(context);
            },
          ),
          ListTile(
            title: Text(AppLocalizations.of(context)!.appBarMaps),
            onTap: () {
              Navigator.pushNamed(context, mapsRoute);
              // Navigator.pop(context);
            },
          ),
          ListTile(
            title: Text(AppLocalizations.of(context)!.appBarDivisions),
            onTap: () {
              Navigator.pushNamed(context, divisionsRoute);
              // Navigator.pop(context);
            },
          ),
          ListTile(
            title: Text(AppLocalizations.of(context)!.appBarCosplay),
            onTap: () {
              Navigator.pushNamed(context, cosplayRoute);
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
