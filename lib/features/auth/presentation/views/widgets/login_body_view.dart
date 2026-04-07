
import 'package:flutter/material.dart';
import 'package:inofruit/core/theming/app_colors.dart';
import 'package:inofruit/core/theming/app_text_styles.dart';
import 'package:inofruit/core/widgets/custom_button.dart';
import 'package:inofruit/core/widgets/custom_text_form_field.dart';
import 'package:inofruit/features/auth/presentation/views/widgets/dont_have_account.dart';
import 'package:inofruit/features/auth/presentation/views/widgets/or_divider.dart';
import 'package:inofruit/features/auth/presentation/views/widgets/social_login_buton.dart';
import '../../../../../core/utils/images.dart';





class LoginBodyView extends StatelessWidget {
  const LoginBodyView({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          const SizedBox(height: 24,),
          CustomTextFormField(hintText: 'البريد الإلكتروني',keyboardType: TextInputType.emailAddress),
          const SizedBox(height: 16,),
          CustomTextFormField(hintText: ' كلمة المرور', isPassword: true, keyboardType: TextInputType.visiblePassword,suffixIcon: GestureDetector(child: Icon(Icons.remove_red_eye),),),
           const SizedBox(height: 16,),
          Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text("نسيت كلمة المرور؟",style: TextStyles.bold13.copyWith(color: AppColors.lightPrimaryColor),),
              ],
            ),
         const SizedBox(height: 33,),
         AbbCustomButton(onPressed: (){}, text: "تسجيل دخول"),
         const SizedBox(height: 33,),
         const DontHaveAccount(),
         const SizedBox(height: 33,),
         const OrDivider(),
         const SizedBox(height: 19,),
         SocialLoginButton(
          onPressed: (){},
          title: "تسجيل بواسطة جوجل",
          image:Assets.assetsImagesGoogleIcon,
         ),
         const SizedBox(height: 16,),
           SocialLoginButton(
          onPressed: (){},
          title: "تسجيل بواسطة أبل",
          image:Assets.assetsImagesAppleIcon,
         ),
                const SizedBox(height: 16,),
      
           SocialLoginButton(
          onPressed: (){},
          title: "تسجيل بواسطة فيسبوك",
          image:Assets.assetsImagesFacebookIcon,
         ),
      
         
      
      
        ],
      ),
    );
  }
  
}