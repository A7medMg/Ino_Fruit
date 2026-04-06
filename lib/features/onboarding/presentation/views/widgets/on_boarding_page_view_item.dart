import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

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
              Visibility(
                visible: isVisable,
                child: Padding(
                  padding: const EdgeInsets.all(16),
                  child: const Text("تخط"),
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
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Text(subTitle,
          textAlign: TextAlign.center,),
        )

      ],
    );
  }
}
