import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import 'drawer.dart';

class CateringPage extends StatelessWidget {
  const CateringPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(AppLocalizations.of(context)!.appBarCatering),
        ),
        drawer: MainDrawer(),
        body:  Center(
          child: Text(AppLocalizations.of(context)!.hello),
        ),
      );
  }
}