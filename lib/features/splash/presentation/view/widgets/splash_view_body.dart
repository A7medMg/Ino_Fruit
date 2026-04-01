import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:inofruit/core/utils/images.dart';

class SplashViewBody extends StatelessWidget {
  const SplashViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
    
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
    
      children: [
       Row(
        mainAxisAlignment: MainAxisAlignment.start,
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
}
