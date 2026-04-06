import 'package:flutter/material.dart';

import '../theming/app_colors.dart';

class AbbCustomButton extends StatelessWidget {
  final void Function() onPressed ;
  final String text;
  const AbbCustomButton({super.key, required this.onPressed, required this.text});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 54,
      child: ElevatedButton(

          style: ButtonStyle(
            backgroundColor: WidgetStateProperty.all(AppColors.primary),
            shape: WidgetStateProperty.all(RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16),
            )),
          ),
          onPressed: onPressed, child: Text(text,style: TextStyle(
        color: Colors.white,
        fontSize: 18,
        fontWeight: FontWeight.bold,
      ),)),
    );
  }
}
