// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ifood/core/constants/app_colors.dart';
import 'package:ifood/core/presentation/widgets/cart_buttton.dart';
import 'package:ifood/features/home/presentation/widgets/product_image_with_favorite.dart';
import 'package:ifood/features/home/presentation/widgets/product_info.dart';

class ProductCard extends StatelessWidget {
  final String imageUrl;
  final String title;
  final String category;
  final double originalPrice;
  final double discountedPrice;
  final double rating;
  final bool isFavorite;
  final VoidCallback? onFavoritePressed;
  final VoidCallback? onCartPressed;

  const ProductCard({
    super.key,
    required this.imageUrl,
    required this.title,
    required this.category,
    required this.originalPrice,
    required this.discountedPrice,
    required this.rating,
    this.isFavorite = false,
    this.onFavoritePressed,
    this.onCartPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12.r),
        boxShadow: [
          BoxShadow(
            color: AppColors.productCard,
            spreadRadius: 1,
            blurRadius: 8,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 10.h),
      child: Stack(
        children: [
          Row(
            spacing: 16.w,
            children: [
              Hero(
                tag: imageUrl,
                child: ProductImageWithFavorite(
                  imageUrl: imageUrl,
                  isFavorite: isFavorite,
                  onFavoritePressed: onFavoritePressed,
                ),
              ),
              Flexible(
                child: ProductInfo(
                  title: title,
                  category: category,
                  originalPrice: originalPrice,
                  discountedPrice: discountedPrice,
                  rating: rating,
                ),
              ),
            ],
          ),
          Positioned(
            bottom: 0,
            right: 0,
            child: CartButton(onPressed: onCartPressed),
          ),
        ],
      ),
    );
  }
}
