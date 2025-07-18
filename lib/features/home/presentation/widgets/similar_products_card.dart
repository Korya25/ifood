import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ifood/core/presentation/widgets/image_with_shimmer.dart';

class SimilarProductsCard extends StatelessWidget {
  const SimilarProductsCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 16.w),
      width: 0.28.sw,
      child: ImageWithShimmer(
        imageUrl:
            'https://upload.wikimedia.org/wikipedia/commons/thumb/9/91/Pizza-3007395.jpg/800px-Pizza-3007395.jpg',
      ),
    );
  }
}
