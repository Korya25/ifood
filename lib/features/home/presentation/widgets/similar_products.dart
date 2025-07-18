import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ifood/core/presentation/widgets/custom_horizontal_list.dart';
import 'package:ifood/core/resources/app_text_styles.dart';
import 'package:ifood/features/home/presentation/widgets/similar_products_card.dart';

class SimilarProducts extends StatelessWidget {
  const SimilarProducts({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 12.h,
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.w),
          child: Text('Similar Products', style: AppTextStyles.inter18Black600),
        ),
        CustomHorizontalList(
          itemBuilder: (context, index) {
            return SimilarProductsCard();
          },
        ),
      ],
    );
  }
}
