
import 'package:flutter/material.dart';
import 'package:inofruit/core/theming/app_text_styles.dart';

class OrDivider extends StatelessWidget {
  const OrDivider({super.key});

  @override
  Widget build(BuildContext context) {
    return  Row(
          children: [
            Expanded(child: Divider(color: Color(0xFFE6E9E9),thickness: 1,)),
            const SizedBox(width: 18,),
            Text("أو",style: TextStyles.bold16.copyWith(color: Color(0xFF949D9E)),),
            const SizedBox(width: 18,),
            Expanded(child: Divider(color: Color(0xFFE6E9E9),thickness: 1,)),
          ],

        );
  }
}