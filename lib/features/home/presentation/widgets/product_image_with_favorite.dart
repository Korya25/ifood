import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ifood/core/presentation/widgets/image_with_shimmer.dart';
import 'package:ifood/core/presentation/widgets/favorite_button.dart';

class ProductImageWithFavorite extends StatelessWidget {
  final String imageUrl;
  final bool isFavorite;
  final VoidCallback? onFavoritePressed;

  const ProductImageWithFavorite({
    super.key,
    required this.imageUrl,
    required this.isFavorite,
    this.onFavoritePressed,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
          width: 0.47.sw,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(8.r),
            child: ImageWithShimmer(
              height: 0.15.sh,
              width: 0.47.sw,
              imageUrl: imageUrl,
            ),
          ),
        ),
        Positioned(
          right: 4.w,
          top: 4.h,
          child: FavoriteButton(onFavoritePressed: onFavoritePressed, isFavorite: isFavorite),
        ),
      ],
    );
  }
}
