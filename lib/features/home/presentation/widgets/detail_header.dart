import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ifood/core/constants/app_colors.dart';
import 'package:ifood/core/presentation/icon_container_button.dart';
import 'package:ifood/core/presentation/widgets/cart_buttton.dart';
import 'package:ifood/core/presentation/widgets/image_with_shimmer.dart';
import 'package:ifood/features/home/presentation/widgets/detail_header_actions.dart';

class DetailHeader extends StatelessWidget {
  const DetailHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Hero(
          tag:
              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTyLCWEbWCyzRRiQoUBSLcY52FedzxjpJn2fA&s',
          child: ImageWithShimmer(
            enableZoom: true,
            imageUrl:
                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTyLCWEbWCyzRRiQoUBSLcY52FedzxjpJn2fA&s',
            height: 0.4.sh,
            width: double.infinity,
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 20.h),
          child: DetailHeaderActions(),
        ),

        Positioned(
          bottom: 10,
          right: 10,
          child: IconContainerButton(
          
            backgroundColor: AppColors.primaryGreen,
            child: CartButton(iconColor: AppColors.iconWhite, onPressed: () {}),
          ),
        ),
      ],
    );
  }
}
