import 'package:flutter/material.dart';
import 'package:inofruit/core/helper_funcations/naviagtion_func.dart';
import 'package:inofruit/core/theming/app_text_styles.dart';


AppBar buildAppBarr(BuildContext context,String title) {
    return AppBar(
      backgroundColor: Colors.white,
      centerTitle: true,
     leading: GestureDetector(
      onTap: (){
        context.pop();
      },
      child: Icon(Icons.arrow_back_ios_new)),
      title: Text(title,style: TextStyles.bold19,),
    );
  }