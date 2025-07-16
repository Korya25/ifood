import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:ifood/core/constants/app_assets.dart';
import 'package:ifood/core/constants/app_colors.dart';
import 'package:ifood/core/constants/app_strings.dart';
import 'package:ifood/core/resources/app_text_styles.dart';

class MenuItem extends StatelessWidget {
  const MenuItem({super.key, required this.index});
  final int index;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 0.1.sh,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: AppColors.continerBackgroundIcon,
          ),
          margin: EdgeInsets.symmetric(horizontal: 16.w),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: SvgPicture.asset(
              AppAssets.homeMenuItems[index],
              height: 25.h,
              width: 25.w,
            ),
          ),
        ),
        Text(
          AppStrings.homeMenuItems[index],
          style: AppTextStyles.inter14Black500,
        ),
      ],
    );
  }
}
