import 'package:flutter/material.dart';
import 'package:story_shop/shared/theme.dart';

class CustomTextFormField extends StatelessWidget {
  final String hintText;
  final bool obscureText;
  final EdgeInsets margin;

  const CustomTextFormField({
    Key? key,
    required this.hintText,
    this.obscureText = false,
    this.margin = EdgeInsets.zero,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin,
      child: TextFormField(
        obscureText: obscureText,
        cursorColor: whiteColor1,
        style: whiteTextStyle1,
        decoration: InputDecoration(
          contentPadding: const EdgeInsets.symmetric(
            horizontal: 20,
            vertical: 12,
          ),
          fillColor: darkGreyColor2,
          filled: true,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
            borderSide: BorderSide.none,
          ),
          hintText: hintText,
          hintStyle: darkGreyTextStyle,
        ),
      ),
    );
  }
}
