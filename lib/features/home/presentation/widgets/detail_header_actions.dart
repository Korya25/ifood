import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:ifood/core/constants/app_colors.dart';
import 'package:ifood/core/presentation/icon_container_button.dart';
import 'package:ifood/core/presentation/widgets/favorite_button.dart';

class DetailHeaderActions extends StatelessWidget {
  const DetailHeaderActions({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        IconContainerButton(
          onTap: () {
            context.pop();
          },

          child: Icon(Icons.arrow_back_ios_new,color: AppColors.iconWhite,),
        ),
        IconContainerButton(
          child: FavoriteButton(onFavoritePressed: () {}, isFavorite: false),
        ),
      ],
    );
  }
}

class HeaderActionItem extends StatelessWidget {
  final VoidCallback? onTap;
  final IconData? icon;
  final Widget? child;

  const HeaderActionItem({super.key, this.onTap, this.icon, this.child});

  @override
  Widget build(BuildContext context) {
    final content =
        child ?? Icon(icon, size: 20.sp, color: AppColors.iconWhite);

    return IconContainerButton(
      onTap: onTap,
      backgroundColor: AppColors.continerBackgroundIcon,
      borderRadius: BorderRadius.circular(10.r),
      child: content,
    );
  }
}
