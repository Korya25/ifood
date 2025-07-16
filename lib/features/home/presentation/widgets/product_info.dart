import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ifood/core/presentation/widgets/price_desiplay.dart';
import 'package:ifood/core/presentation/widgets/star_rating.dart';
import 'package:ifood/core/resources/app_text_styles.dart';

class ProductInfo extends StatelessWidget {
  final String title;
  final String category;
  final double originalPrice;
  final double discountedPrice;
  final double rating;

  const ProductInfo({
    super.key,
    required this.title,
    required this.category,
    required this.originalPrice,
    required this.discountedPrice,
    required this.rating,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(title, style: AppTextStyles.inter14Black600),
        SizedBox(height: 4.h),
        Text(category, style: AppTextStyles.inter12Grey300),
        SizedBox(height: 6.h),
        StarRating(rating: rating),
        SizedBox(height: 8.h),
        PriceDisplay(
          originalPrice: originalPrice,
          discountedPrice: discountedPrice,
        ),
      ],
    );
  }
}

