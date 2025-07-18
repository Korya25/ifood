import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ifood/core/constants/app_colors.dart';

class IconContainerButton extends StatelessWidget {
  final VoidCallback? onTap;
  final Widget child;
  final double height;
  final double width;
  final Color backgroundColor;
  final BorderRadiusGeometry borderRadius;
  final EdgeInsetsGeometry? padding;

  const IconContainerButton({
    super.key,
    required this.child,
    this.onTap,
    this.height = 30,
    this.width = 35,
    this.backgroundColor = AppColors.continerBackgroundIcon,
    this.borderRadius = const BorderRadius.all(Radius.circular(10)),
    this.padding,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      behavior: HitTestBehavior.opaque,
      child: Container(
        height: height.h,
        width: width.w,
        padding: padding,
        decoration: BoxDecoration(
          color: backgroundColor,
          borderRadius: borderRadius,
        ),
        alignment: Alignment.center,
        child: child,
      ),
    );
  }
}
