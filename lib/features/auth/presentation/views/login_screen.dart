import 'package:flutter/material.dart';
import 'package:inofruit/constant.dart';
import 'package:inofruit/core/widgets/custom_app_bar.dart';
import 'package:inofruit/features/auth/presentation/views/widgets/login_body_view.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        appBar: buildAppBarr(context,"تسجيل الدخول"),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: kHorizontalPadding),
          child: LoginBodyView(),
        ),
      ),
    );
  }

  
}