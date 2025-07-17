import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ifood/core/constants/app_assets.dart';
import 'package:ifood/core/presentation/widgets/price_desiplay.dart';
import 'package:ifood/core/presentation/widgets/star_rating.dart';
import 'package:ifood/core/resources/app_text_styles.dart';

class DetailMainContent extends StatelessWidget {
  const DetailMainContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          spacing: 0.h,
          children: [
            Text('Pizza', style: AppTextStyles.inter28BlackBold),
            PriceDisplay(
              originalPrice: 15.7,
              discountedPrice: 20.14,
              originalStyle: AppTextStyles.inter18Green600,
              discountStyle: AppTextStyles.inter14Grey500,
            ),
          ],
        ),
        Column(
          spacing: 10.h,
          children: [
            StarRating(size: 16.sp, rating: 4),
            Row(
              spacing: 10.w,
              children: [
                SvgPicture.asset(AppAssets.mdiClock),
                Text('20 min', style: AppTextStyles.inter14Grey500),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
