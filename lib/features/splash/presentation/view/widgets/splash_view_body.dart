import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:inofruit/constant.dart';
import 'package:inofruit/core/services/shared_prefeneces.dart';
import 'package:inofruit/core/utils/images.dart';

import '../../../../../core/helper_funcations/naviagtion_func.dart';
import '../../../../../core/helper_funcations/routes_name.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}


class _SplashViewBodyState extends State<SplashViewBody> {
  @override
  void initState() {
    // TODO: implement initState
    executeThenNavigate();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Column(

      mainAxisAlignment: MainAxisAlignment.spaceBetween,

      children: [
       Row(
        mainAxisAlignment: MainAxisAlignment.end,
         children: [
           SvgPicture.asset(Assets.assetsImagesPlant),
         ],
       ),
       SvgPicture.asset(Assets.assetsImagesLogo),
       SizedBox(
        width: double.infinity,
        child: SvgPicture.asset(Assets.assetsImagesBottomSplash)),
      ],

    );
  }
  void executeThenNavigate(){
    bool isFirstTime = Pref.getBool(onBoardingIseenKey) ;
    Future.delayed(const Duration(seconds: 3), () {
      if (isFirstTime) {
        context.pushReplacementNamed(RoutesName.loginScreen);
      } else {
        context.pushReplacementNamed(RoutesName.onBoarding);
      }
    });

  }

}

