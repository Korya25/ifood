import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ifood/core/constants/app_assets.dart';

class CustomHorizontalList extends StatelessWidget {
  const CustomHorizontalList({
    super.key,
    required this.itemBuilder,
    this.separatorWidth,
  });
  final Widget? Function(BuildContext, int) itemBuilder;
  final double? separatorWidth;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 0.13.sh,
      child: ListView.separated(
        physics: BouncingScrollPhysics(),
        itemCount: AppAssets.homeMenuItems.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: itemBuilder,
        separatorBuilder: (BuildContext context, int index) {
          return SizedBox(width: separatorWidth ?? 0.w);
        },
      ),
    );
  }
}
