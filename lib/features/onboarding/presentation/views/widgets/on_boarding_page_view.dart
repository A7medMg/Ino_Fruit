import 'package:flutter/material.dart';
import 'package:inofruit/core/theming/app_colors.dart';
import 'package:inofruit/core/theming/app_text_styles.dart';
import 'package:inofruit/core/utils/images.dart';

import 'on_boarding_page_view_item.dart';

class OnBoardingPageView extends StatelessWidget {
  
  final PageController pageController ;
  const OnBoardingPageView({super.key,  required this.pageController});

  @override
  Widget build(BuildContext context) {
    return PageView(
      controller:pageController ,
      children: [
        PageViewItem(subTitle: 'اكتشف تجربة تسوق فريدة مع FruitHUB. استكشف مجموعتنا الواسعة من الفواكه الطازجة الممتازة واحصل على أفضل العروض والجودة العالية.',
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("مرحبًا بك في",style: TextStyles.bold23,),
               Text(" HUB",style: TextStyles.bold23.copyWith(color: AppColors.secondaryColor)),
              Text("Fruit",style: TextStyles.bold23.copyWith(color: AppColors.primary)),
          
              
            ],
          ),
          image: Assets.assetsImagesOnboardingImage1,
          backGroundImage:  Assets.assetsImagesOnboardingBackground1, isVisable: true),
        PageViewItem(subTitle: "نقدم لك أفضل الفواكه المختارة بعناية. اطلع على التفاصيل والصور والتقييمات لتتأكد من اختيار الفاكهة المثالية",
          title: Text("ابحث وتسوق",style: TextStyles.bold23,),
          image: Assets.assetsImagesOnboardingImage2,
          backGroundImage:  Assets.assetsImagesOnboardingBackground2, isVisable: false),

      ],
    );
  }
}
