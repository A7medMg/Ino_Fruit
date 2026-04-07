import 'package:flutter/material.dart';
import 'package:inofruit/core/theming/app_colors.dart';
import 'package:inofruit/core/theming/app_text_styles.dart';

class DontHaveAccount extends StatelessWidget {
  const DontHaveAccount({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("ليس لديك حساب؟",style: TextStyles.bold16.copyWith(color: Color(0xFF949D9E)),),
            const SizedBox(width: 4,),
            Text(" قم بإنشاء حساب",style: TextStyles.bold16.copyWith(color: AppColors.lightPrimaryColor),),
          ],
        );
  }
}