import 'package:flutter/material.dart';
import 'package:inofruit/features/splash/presentation/view/widgets/splash_view_body.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:SplashViewBody(),
    );
  }
}
