import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import 'drawer.dart';

class MapsPage extends StatelessWidget {
  const MapsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(AppLocalizations.of(context)!.appBarMaps),
        ),
        drawer: MainDrawer(),
        body:  Center(
          child: Text(AppLocalizations.of(context)!.hello),
        ),
      );
  }
}