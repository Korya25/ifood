import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ifood/core/constants/app_colors.dart';

class FavoriteButton extends StatelessWidget {
  const FavoriteButton({
    super.key,
    required this.onFavoritePressed,
    required this.isFavorite,
  });

  final VoidCallback? onFavoritePressed;
  final bool isFavorite;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onFavoritePressed,
      child: Icon(
        isFavorite ? Icons.favorite : Icons.favorite,
        color: isFavorite
            ? AppColors.iconredAccent
            : AppColors.iconDisable,
        size: 25.sp,
      ),
    );
  }
}
