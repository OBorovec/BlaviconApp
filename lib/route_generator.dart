import 'package:blavicon_app/screens/catering.dart';
import 'package:blavicon_app/screens/cosplay.dart';
import 'package:blavicon_app/screens/degustation.dart';
import 'package:blavicon_app/screens/divisions.dart';
import 'package:blavicon_app/screens/home.dart';
import 'package:blavicon_app/screens/maps.dart';
import 'package:blavicon_app/screens/program.dart';
import 'package:blavicon_app/screens/settings.dart';
import 'package:flutter/material.dart';

const String homeRoute = '/';
const String cateringRoute = '/catering';
const String cosplayRoute = '/cosplay';
const String degustationRoute = '/degustation';
const String divisionsRoute = '/divisions';
const String mapsRoute = '/maps';
const String programRoute = '/program';
const String settingRoute = '/setting';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    // Getting arguments passed in while calling Navigator.pushNamed
    final args = settings.arguments;

    switch (settings.name) {
      case homeRoute:
        return MaterialPageRoute(
          builder: (_) => HomePage()
        );
      case cateringRoute:
        return MaterialPageRoute(
          builder: (_) => CateringPage()
        );
      case cosplayRoute:
        return MaterialPageRoute(
          builder: (_) => CosplayPage()
        );
      case degustationRoute:
        return MaterialPageRoute(
          builder: (_) => DegustationPage()
        );
      case divisionsRoute:
        return MaterialPageRoute(
          builder: (_) => DivisionsPage()
        );
      case mapsRoute:
        return MaterialPageRoute(
          builder: (_) => MapsPage()
        );
      case programRoute:
        return MaterialPageRoute(
          builder: (_) => ProgramPage()
        );
      case settingRoute:
        return MaterialPageRoute(
          builder: (_) => SettingPage(),
        );
      default:
        // If there is no such named route in the switch statement, e.g. /third
        return _errorRoute();
    }
  }

  static Route<dynamic> _errorRoute() {
    return MaterialPageRoute(builder: (_) {
      return Scaffold(
        appBar: AppBar(
          title: Text('Error'),
        ),
        body: Center(
          child: Text('ERROR'),
        ),
      );
    });
  }
}