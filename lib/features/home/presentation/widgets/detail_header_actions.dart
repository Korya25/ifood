import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:ifood/core/constants/app_colors.dart';
import 'package:ifood/core/presentation/widgets/favorite_button.dart';

class DetailHeaderActions extends StatelessWidget {
  const DetailHeaderActions({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        headerActionItem(
          onTap: () {
            context.pop();
          },
          icon: Icons.arrow_back_ios,
        ),
        headerActionItem(
          widget: FavoriteButton(onFavoritePressed: () {}, isFavorite: false),
        ),
      ],
    );
  }

  Container headerActionItem({
    VoidCallback? onTap,
    IconData? icon,
    Widget? widget,
  }) {
    return Container(
      height: 30.h,
      width: 40.w,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.r),
        color: AppColors.iconGreen,
      ),
      child:
          widget ??
          GestureDetector(
            onTap: onTap,
            child: Icon(icon, color: AppColors.iconWhite, size: 20.sp),
          ),
    );
  }
}
