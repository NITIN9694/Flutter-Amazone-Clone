import 'package:amazone_clone/features/navigation/route.dart';
import 'package:amazone_clone/screens/auth_screen.dart';
import 'package:flutter/material.dart';

import 'features/constants/global_variabels.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Amazon Clone',
      theme: ThemeData(
        scaffoldBackgroundColor: GlobalVariables.backgroundColor,
        colorScheme: const ColorScheme.light(
          primary: GlobalVariables.secondaryColor
        ),
        appBarTheme: const AppBarTheme(
          elevation: 0,
          iconTheme: IconThemeData(
            color: Colors.black
          )
        )

      ),
      onGenerateRoute: (setting)=>generateRout(setting),
      home: AuthScreen(),
    );
  }
}

