import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/cupertino.dart';
import 'package:inofruit/core/theming/app_colors.dart';

import '../../../../../constant.dart';
import '../../../../../core/widgets/custom_button.dart';
import 'on_boarding_page_view.dart';

class OnBoardingViewBody extends StatelessWidget {
  const OnBoardingViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(child: OnBoardingPageView()),
        DotsIndicator(dotsCount: 2,
          decorator: DotsDecorator(
            activeColor:AppColors.primary,
            color: AppColors.primary.withOpacity(0.5),

          ),

        ),
        const SizedBox(height: 29,),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: kHorizontalPadding),
          child: AbbCustomButton(
            onPressed: (){},
            text: "ابدأ الان",
          ),
        ),
        const SizedBox(height: 43,),

      ],
    );
  }
}
