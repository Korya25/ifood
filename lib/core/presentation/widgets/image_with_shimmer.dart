import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:ifood/core/constants/app_colors.dart';
import 'package:shimmer/shimmer.dart';

class ImageWithShimmer extends StatelessWidget {
  const ImageWithShimmer({
    super.key,
    required this.imageUrl,
    this.width,
    this.height,
    this.enableZoom = false,
  });

  final String imageUrl;
  final double? height;
  final double? width;

  final bool enableZoom;
  @override
  Widget build(BuildContext context) {
    return InteractiveViewer(
      scaleEnabled: enableZoom,
      child: CachedNetworkImage(
        imageUrl: imageUrl,
        height: height,
        width: width,
        fit: BoxFit.cover,
        placeholder: (_, __) => Shimmer.fromColors(
          baseColor: AppColors.shimmerBase,
          highlightColor: AppColors.shimmerHighlight,
          child: Container(height: height, color: AppColors.iconGreen),
        ),
        errorWidget: (_, __, ___) =>
            const Icon(Icons.error, color: AppColors.error),
      ),
    );
  }
}
