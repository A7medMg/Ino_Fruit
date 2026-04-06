import 'package:flutter/material.dart';
import 'package:inofruit/core/utils/images.dart';

import 'on_boarding_page_view_item.dart';

class OnBoardingPageView extends StatelessWidget {
  final int currentPage;
  final PageController pageController ;
  const OnBoardingPageView({super.key, required this.currentPage, required this.pageController});

  @override
  Widget build(BuildContext context) {
    return PageView(
      controller:pageController ,
      children: [
        PageViewItem(subTitle: 'اكتشف تجربة تسوق فريدة مع FruitHUB. استكشف مجموعتنا الواسعة من الفواكه الطازجة الممتازة واحصل على أفضل العروض والجودة العالية.',
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("مرحبًا بك في"),
               Text(" HUB "),
              Text("Fruit"),
          
              
            ],
          ),
          image: Assets.assetsImagesOnboardingImage1,
          backGroundImage:  Assets.assetsImagesOnboardingBackground1, isVisable: currentPage==0,),
        PageViewItem(subTitle: "نقدم لك أفضل الفواكه المختارة بعناية. اطلع على التفاصيل والصور والتقييمات لتتأكد من اختيار الفاكهة المثالية",
          title: Text("ابحث وتسوق"),
          image: Assets.assetsImagesOnboardingImage2,
          backGroundImage:  Assets.assetsImagesOnboardingBackground2, isVisable: currentPage==0,),

      ],
    );
  }
}
