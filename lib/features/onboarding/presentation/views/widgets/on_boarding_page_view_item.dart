import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:inofruit/constant.dart';
import 'package:inofruit/core/helper_funcations/naviagtion_func.dart';
import 'package:inofruit/core/helper_funcations/routes_name.dart';
import 'package:inofruit/core/services/shared_prefeneces.dart';
import 'package:inofruit/core/theming/app_text_styles.dart';

class PageViewItem extends StatelessWidget {
  final bool isVisable;
  final String subTitle;
  final Widget title;
  final String image;
  final String backGroundImage;

  const PageViewItem({
    super.key,
    required this.subTitle,
    required this.title,
    required this.image,
    required this.backGroundImage, required this.isVisable,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.5,
          width: double.infinity,
          child: Stack(
            children: [
              Positioned.fill(
                child: SvgPicture.asset(backGroundImage, fit: BoxFit.fill),
              ),
              Positioned(
                  bottom: 0,
                  left: 0,
                  right: 0,
                  child: SvgPicture.asset(image,height: 250)),
              GestureDetector(
                onTap: (){
                  Pref.setBool(onBoardingIseenKey, true);
                  context.pushReplacementNamed(RoutesName.loginScreen);
                },
                child: Visibility(
                  visible: isVisable,
                  child: Padding(
                    padding: const EdgeInsets.all(16),
                    child:  Text("تخط",style: TextStyles.regular13.copyWith(color: Color(0xFF4E5456))),
                  ),
                ),
              ),
            ],
          ),
        ),
        SizedBox(height: 64),
        title,
        const SizedBox(
          height: 24,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 47),
          child: Text(subTitle,
          style: TextStyles.semiBold13.copyWith(color: Color(0xFF4E5456)),
        
          
          textAlign: TextAlign.center,),
        )

      ],
    );
  }
}
