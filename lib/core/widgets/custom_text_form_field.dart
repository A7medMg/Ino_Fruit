import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:inofruit/core/theming/app_text_styles.dart';

class CustomTextFormField extends StatelessWidget {
  final String hintText;
  final Widget? suffixIcon;
  final bool isPassword;
  final TextEditingController? controller;
  final TextInputType keyboardType;

  
  
  const CustomTextFormField({super.key, required this.hintText, this.suffixIcon, this.isPassword=false, this.controller, required this.keyboardType});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType:keyboardType ,
      obscureText: isPassword,
      controller: controller,
      style: TextStyles.bold16,
      validator: (v){
        if(v!.isEmpty){
          return "هذا الحقل مطلوب";
        }
        return null;
      },
      decoration: InputDecoration(   
        suffixIcon: suffixIcon,
        contentPadding: EdgeInsets.symmetric(horizontal: 12,vertical: 20),
        fillColor: Color(0xFFF9FAFA),
        filled: true,
        hintText: hintText,
        hintStyle: TextStyles.bold13.copyWith(color:Color(0xFF949D9E)),
        errorBorder: buildOutLineBorder().copyWith(borderSide: BorderSide(color: Colors.red)),
        enabledBorder: buildOutLineBorder(),
        focusedBorder: buildOutLineBorder(),
        
      ),

    );
  }

  OutlineInputBorder buildOutLineBorder() {
    return OutlineInputBorder(
        borderSide: BorderSide(
          width: 1,
          color: Color(0xFFE6E9E9)),
        borderRadius: BorderRadius.circular(4)
      );
  }
}