import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ifood/core/presentation/widgets/image_with_shimmer.dart';
import 'package:ifood/features/home/presentation/widgets/detail_header_actions.dart';

class DetailHeader extends StatelessWidget {
  const DetailHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ImageWithShimmer(
          imageUrl:
              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTyLCWEbWCyzRRiQoUBSLcY52FedzxjpJn2fA&s',
          height: 0.3.sh,
          width: double.infinity,
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 20.h),
          child: DetailHeaderActions(),
        ),
      ],
    );
  }
}
