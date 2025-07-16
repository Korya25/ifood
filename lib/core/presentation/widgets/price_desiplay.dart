
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ifood/core/resources/app_text_styles.dart';

class PriceDisplay extends StatelessWidget {
  final double originalPrice;
  final double discountedPrice;

  const PriceDisplay({
    super.key,
    required this.originalPrice,
    required this.discountedPrice,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      spacing: 4.w,
      children: [
        Text(
          '\$${discountedPrice.toStringAsFixed(1)}',
          style: AppTextStyles.inter14Green500,
        ),
        Text(
          '\$${originalPrice.toStringAsFixed(1)}',
          style: AppTextStyles.inter12Grey300,
        ),
      ],
    );
  }
}
