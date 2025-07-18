import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ifood/core/constants/app_colors.dart';

class AppTextStyles {
  static TextStyle _interFont({
    double? fontSize,
    FontWeight? fontWeight,
    Color? color,
  }) {
    return GoogleFonts.inter(
      fontSize: fontSize ?? 14.sp,
      fontWeight: fontWeight ?? FontWeight.w400,
      color: color,
    );
  }

  static final TextStyle inter18White500 = _interFont(
    fontSize: 18,
    fontWeight: FontWeight.w500,
    color: AppColors.textWhite,
  );
  static final TextStyle inter22WhiteBold = _interFont(
    fontSize: 22,
    fontWeight: FontWeight.bold,
    color: AppColors.textWhite,
  );

  static final TextStyle inter14grey400 = _interFont(
    fontSize: 14,
    fontWeight: FontWeight.w400,
    color: AppColors.textGrey,
  );

  static final TextStyle inter18black700 = _interFont(
    fontSize: 18,
    fontWeight: FontWeight.w700,
    color: AppColors.textBlack,
  );
  static final TextStyle inter14Black600 = _interFont(
    fontSize: 14,
    fontWeight: FontWeight.w600,
    color: AppColors.textBlack,
  );

  static final TextStyle inter12Grey300 = _interFont(
    fontSize: 12,
    fontWeight: FontWeight.w300,
    color: AppColors.textGrey,
  );

  static final TextStyle inter14Green500 = _interFont(
    fontSize: 14,
    fontWeight: FontWeight.w500,
    color: AppColors.textGreen,
  );

  static final TextStyle inter14Black500 = _interFont(
    fontSize: 14,
    fontWeight: FontWeight.w500,
    color: AppColors.textBlack,
  );

  static final TextStyle inter28BlackBold = _interFont(
    fontSize: 28,
    fontWeight: FontWeight.bold,
    color: AppColors.textBlack,
  );

  static final TextStyle inter14Grey500 = _interFont(
    fontSize: 14,
    fontWeight: FontWeight.w500,
    color: AppColors.textGrey,
  );
  static final TextStyle inter18Green600 = _interFont(
    fontSize: 18,
    fontWeight: FontWeight.w600,
    color: AppColors.textGreen,
  );

  static final TextStyle inter12Blackw600 = _interFont(
    fontSize: 12,
    fontWeight: FontWeight.w600,
    color: AppColors.textBlack,
  );

  static final TextStyle inter18Black600 = _interFont(
    fontSize: 18,
    fontWeight: FontWeight.w600,
    color: AppColors.textBlack,
  );

  static final TextStyle inter18White600 = _interFont(
    fontSize: 18,
    fontWeight: FontWeight.w600,
    color: AppColors.textWhite,
  );
}
