import 'package:amazone_clone/screens/auth_screen.dart';
import 'package:flutter/material.dart';

Route<dynamic> generateRout(RouteSettings routeSettings) {
  switch (routeSettings.name) {
    case AuthScreen.routeName:
      return MaterialPageRoute(
        settings: routeSettings,
        builder: (_) => AuthScreen(),
      );
    default:
      return MaterialPageRoute(
          settings: routeSettings,
          builder: (_) => const Scaffold(
                body: Center(
                  child: Text("Screens does not exist!"),
                ),
              ));
  }
}
