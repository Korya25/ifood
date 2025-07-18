import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ifood/core/presentation/widgets/image_with_shimmer.dart';
import 'package:ifood/core/presentation/widgets/typing_text.dart';
import 'package:ifood/core/resources/app_text_styles.dart';
import 'package:ifood/features/home/presentation/widgets/custom_search_field.dart';

// ignore: must_be_immutable
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
    final searchController = TextEditingController();
    return Column(
      spacing: 4.h,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // user Tile
        ListTile(
          minVerticalPadding: 0,
          contentPadding: EdgeInsets.zero,
          leading: ClipOval(
            child: ImageWithShimmer(
              height: 25.h,
              width: 25.w,
              imageUrl: imageUrl,
            ),
          ),
          horizontalTitleGap: 10.w,
          title: TypingText(
            text: 'Hi, $userName',
            textStyle: AppTextStyles.inter18White500,
            writeOnce: true,
          ),
        ),

        // app title
        
        Text(
          'ifood',
          style: AppTextStyles.inter22WhiteBold,

        ).animate().fade(delay:500.ms, duration: 1000.ms),

        // Search Field
        SizedBox(
          height: 0.05.sh,
          child:
              CustomSearchField(
                controller: searchController,
                hintText: 'Search',
                
                onChanged: (value) {},
              ).animate().scale(
                begin: Offset(0, 0),
                end: Offset(1, 1),
                delay: 500.ms,
                duration: 1000.ms,
              ),
        ),
      ],
    );
  }
}
