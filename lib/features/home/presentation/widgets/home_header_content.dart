import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ifood/core/constants/app_colors.dart';
import 'package:ifood/core/presentation/widgets/image_with_shimmer.dart';
import 'package:ifood/core/resources/app_text_styles.dart';

class HomeHeaderContent extends StatelessWidget {
  const HomeHeaderContent({
    super.key,
    required this.imageUrl,
    required this.userName,
  });
  final String imageUrl;
  final String userName;

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 8.h,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // user Tile
        ListTile(
          contentPadding: EdgeInsets.zero,
          leading: ClipOval(
            child: ImageWithShimmer(
              height: 30.h,
              width: 30.w,
              imageUrl: imageUrl,
            ),
          ),
          horizontalTitleGap: 10.w,
          title: Text(
            'Hi, $userName',
            style: AppTextStyles.inter18White500,
          ),
        ),

        // app title
        Text('ifood', style: AppTextStyles.inter28WhiteBold),

        // Search Field
        SizedBox(
          height: 48.h,
          child: TextField(
            decoration: InputDecoration(
              filled: true,
              fillColor: AppColors.fillTextField,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10.r),
              ),
              prefixIcon: Icon(
                Icons.search,
                color: AppColors.iconGrey,
                size: 20.r,
              ),
              hintText: 'Search',
              hintStyle: AppTextStyles.inter14grey400,
            ),
          ).animate().scale(duration: Duration(milliseconds: 600)),
        ),
      ],
    );
  }
}
