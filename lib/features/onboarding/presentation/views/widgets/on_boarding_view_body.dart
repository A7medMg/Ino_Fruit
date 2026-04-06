import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/cupertino.dart';
import 'package:inofruit/core/helper_funcations/naviagtion_func.dart';
import 'package:inofruit/core/helper_funcations/routes_name.dart';
import 'package:inofruit/core/services/shared_prefeneces.dart';
import 'package:inofruit/core/theming/app_colors.dart';

import '../../../../../constant.dart';
import '../../../../../core/widgets/custom_button.dart';
import 'on_boarding_page_view.dart';

class OnBoardingViewBody extends StatefulWidget {
  const OnBoardingViewBody({super.key});

  @override
  State<OnBoardingViewBody> createState() => _OnBoardingViewBodyState();
}

class _OnBoardingViewBodyState extends State<OnBoardingViewBody> {
  late PageController pageController;
  var currentPage = 0;
  @override
  void initState() {
   pageController = PageController();
   pageController.addListener(() {
    setState(() {
       currentPage = pageController.page!.round();
    });
    
     
    });
    super.initState();
  }
  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(child: OnBoardingPageView( pageController: pageController,)),
        DotsIndicator(dotsCount: 2,
          decorator: DotsDecorator(
            activeColor:AppColors.primary,
            color:currentPage == 0 ? AppColors.primary.withOpacity(0.5) : AppColors.primary,

          ),

        ),
        const SizedBox(height: 29,),
        Visibility(
          visible: currentPage == 1,
          maintainAnimation: true,
          maintainState: true,
          maintainSize: true,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: kHorizontalPadding),
            child: AbbCustomButton(
              onPressed: (){
                Pref.setBool(onBoardingIseenKey, true);
                context.pushReplacementNamed(RoutesName.loginScreen);
              },
              text: "ابدأ الان",
            ),
          ),
        ),
        const SizedBox(height: 43,),

      ],
    );
  }
}
