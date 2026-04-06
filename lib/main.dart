import 'package:flutter/material.dart';
import 'package:inofruit/generated/l10n.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
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
      localizationsDelegates: [
                S.delegate,
                GlobalMaterialLocalizations.delegate,
                GlobalWidgetsLocalizations.delegate,
                GlobalCupertinoLocalizations.delegate,
            ],
            supportedLocales: S.delegate.supportedLocales,
            locale: const Locale('ar'),
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white
      ),
      onGenerateRoute: AppRotes().onGenerateRoute,
      initialRoute: RoutesName.splashScreen,


    );
  }
}
