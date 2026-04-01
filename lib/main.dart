import 'package:flutter/material.dart';

import 'core/helper_funcations/app_rotes.dart';
import 'core/helper_funcations/routes_name.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white
      ),
      onGenerateRoute: AppRotes().onGenerateRoute,
      initialRoute: RoutesName.splashScreen,


    );
  }
}
