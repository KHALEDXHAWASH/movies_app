import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:movies_app/core/colorsManager.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField(
      {super.key,
        this.label,
        this.prefixIcon,
        this.suffixIcon,
        this.isSecure = false,
        this.onPress,
        this.controller,
        this.keyboardType = TextInputType.text,
        this.hint,
        this.maxLines = 1, this.validation});

  final String? label;
  final IconData? prefixIcon;
  final IconData? suffixIcon;
  final bool isSecure;
  final VoidCallback? onPress;
  final TextInputType keyboardType;
  final TextEditingController? controller;
  final String? hint;
  final int maxLines;
  final String? Function (String?)? validation;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(16.r),


      child: Container(
        decoration: BoxDecoration(
          color: ColorsManager.gray
        ),
        child: TextFormField(

          validator:validation ,
          controller:controller,
          maxLines: maxLines,
          style: Theme.of(context).textTheme.displaySmall,
          keyboardType: keyboardType,
          obscureText: isSecure,
          decoration: InputDecoration(
              alignLabelWithHint: true,
              hintText: hint,
              labelText: label,
              prefixIcon: prefixIcon != null ? Icon(prefixIcon,color: ColorsManager.white,) : null,
              suffixIcon: suffixIcon != null
                  ? IconButton(onPressed: onPress, icon: Icon(suffixIcon,color: ColorsManager.white,))
                  : null),
        ),
      ),
    );
  }
}