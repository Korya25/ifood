import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ifood/core/constants/app_colors.dart';
import 'package:ifood/core/resources/app_text_styles.dart';
import 'package:ifood/features/home/presentation/widgets/detail_body.dart';
import 'package:ifood/features/home/presentation/widgets/detail_header.dart';
import 'package:ifood/features/home/presentation/widgets/similar_products.dart';

class HomeDetailsView extends StatelessWidget {
  const HomeDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          spacing: 8.h,
          children: [
            DetailHeader(),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.w),
              child: DetailContent(),
            ),
            SimilarProducts(),
            // Button
            GestureDetector(
              onTap: () {},
              child: Container(
                margin: EdgeInsets.symmetric(horizontal: 30),
                height: 0.08.sh,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.r),
                  color: AppColors.primaryGreen,
                ),
                child: Center(
                  child: Text(
                    'Add to cart ',
                    style: AppTextStyles.inter18White600,
                  ),
                ),
              ),
            ),
            SizedBox(height: 10.h),
          ],
        ),
      ),
    );
  }
}
