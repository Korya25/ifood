import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ifood/core/constants/app_colors.dart';
import 'package:ifood/core/resources/app_text_styles.dart';

class CustomSearchField extends StatelessWidget {
  final TextEditingController controller;
  final String hintText;
  final ValueChanged<String>? onChanged;

  const CustomSearchField({
    super.key,
    required this.controller,
    this.hintText = 'Search',
    this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    final OutlineInputBorder commonBorder = OutlineInputBorder(
      borderRadius: BorderRadius.circular(10.r),
      borderSide: BorderSide(color: AppColors.fillTextField),
    );

    return TextField(
      controller: controller,
      onChanged: onChanged,
      decoration: InputDecoration(
        filled: true,
        fillColor: AppColors.fillTextField,
        hintText: hintText,
        hintStyle: AppTextStyles.inter14grey400,
        prefixIcon: Icon(Icons.search, color: AppColors.iconGrey, size: 20.r),
        suffixIcon: GestureDetector(
          onTap: () {
            controller.clear();
            FocusScope.of(context).requestFocus(FocusNode());
          },
          child: Icon(Icons.clear, color: AppColors.iconGrey),
        ),
        border: commonBorder,
        enabledBorder: commonBorder,
        focusedBorder: commonBorder,
        errorBorder: commonBorder,
        disabledBorder: commonBorder,
        focusedErrorBorder: commonBorder,
      ),
    );
  }
}
