import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ifood/core/resources/app_text_styles.dart';

class PriceDisplay extends StatelessWidget {
  final double originalPrice;
  final double discountedPrice;
  final TextStyle? originalStyle;
  final TextStyle? discountStyle;
  const PriceDisplay({
    super.key,
    required this.originalPrice,
    required this.discountedPrice,
    this.originalStyle,
    this.discountStyle,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      spacing: 4.w,
      children: [
        Text(
          '\$${discountedPrice.toStringAsFixed(1)}',
          style: originalStyle ?? AppTextStyles.inter14Green500,
        ),
        Text(
          '\$${originalPrice.toStringAsFixed(1)}',
          style: discountStyle ?? AppTextStyles.inter12Grey300,
        ),
      ],
    );
  }
}
