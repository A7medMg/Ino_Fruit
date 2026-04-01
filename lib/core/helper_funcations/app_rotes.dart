
import 'package:flutter/material.dart';
import 'package:inofruit/core/helper_funcations/routes_name.dart';

import '../../features/onboarding/presentation/views/onboarding_screen.dart';
import '../../features/splash/presentation/view/splash_screen.dart';

class AppRotes {
  Route? onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case RoutesName.splashScreen:
        return MaterialPageRoute(
          builder: (context) => const SplashScreen(),
        );
      case RoutesName.onBoarding:
        return MaterialPageRoute(
          builder: (context) => const OnboardingScreen(),
        );
      default:
        return null;
    }




    }

  }

