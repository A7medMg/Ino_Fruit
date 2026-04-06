import 'package:flutter/material.dart';
import 'package:inofruit/features/onboarding/presentation/views/widgets/on_boarding_view_body.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: OnBoardingViewBody()),
    );
  }
}
