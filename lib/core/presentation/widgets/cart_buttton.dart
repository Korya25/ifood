import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ifood/core/constants/app_colors.dart';

class CartButton extends StatelessWidget {
  final VoidCallback? onPressed;

  const CartButton({super.key, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Icon(Icons.shopping_cart, color: AppColors.iconGreen, size: 22.sp),
    );
  }
}
